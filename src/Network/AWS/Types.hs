{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE StandaloneDeriving         #-}

-- |
-- Module      : Network.AWS.Types
-- Copyright   : (c) 2013 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.Types where

import           Control.Applicative
import           Control.Monad
import           Control.Monad.IO.Class
import           Control.Monad.Reader
import           Data.Aeson
import           Data.ByteString        (ByteString)
import qualified Data.ByteString.Char8  as BS
import           Data.Map               (Map)
import qualified Data.Map               as Map
import           Network.Http.Client    hiding (post, put)
import           System.IO.Streams      (InputStream)

data Credentials = Credentials
    { accessKey :: ByteString
    , secretKey :: ByteString
    } deriving (Show)

newtype AWS a = AWS { unWrap :: ReaderT Credentials IO a }
    deriving (Functor, Applicative, Monad, MonadIO, MonadPlus, MonadReader Credentials)

data SigningVersion
    = Version2
    | Version3
      deriving (Show)

data RawRequest a where
    RawRequest :: AWSTemplate a
               => { rqMethod  :: !Method
                 , rqHost    :: !ByteString
                 , rqAction  :: !(Maybe ByteString)
                 , rqPath    :: !(Maybe ByteString)
                 , rqHeaders :: !(Map ByteString [ByteString])
                 , rqQuery   :: ![(ByteString, ByteString)]
                 , rqBody    :: !a
                 }
               -> RawRequest a

emptyRequest :: AWSTemplate a
             => Method
             -> ByteString
             -> ByteString
             -> a
             -> RawRequest a
emptyRequest meth host path body = RawRequest
    { rqMethod  = meth
    , rqHost    = host
    , rqAction  = Nothing
    , rqPath    = if BS.null path then Nothing else Just path
    , rqHeaders = Map.empty
    , rqQuery   = []
    , rqBody    = body
    }

post, put :: AWSTemplate a => ByteString -> ByteString -> a -> RawRequest a
post = emptyRequest POST
put  = emptyRequest PUT

deriving instance Show a => Show (RawRequest a)

data SignedRequest = SignedRequest
    { rqUrl     :: !ByteString
    , rqRequest :: !Request
    , rqStream  :: !(InputStream ByteString)
    }

instance Show SignedRequest where
    show SignedRequest{..} = "SignedRequest: "
        ++ show rqUrl
        ++ "\n"
        ++ show rqRequest

class (Show a, ToJSON a) => AWSTemplate a where
    readTemplate :: a -> ByteString

class Show a => AWSRequest a where
    signRequest :: a -> AWS SignedRequest
