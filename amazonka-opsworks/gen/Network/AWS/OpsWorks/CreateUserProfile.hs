{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.CreateUserProfile
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new user profile.
--
-- __Required Permissions__: To use this action, an IAM user must have an
-- attached policy that explicitly grants permissions. For more information
-- on user permissions, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
--
-- /See:/ <http://docs.aws.amazon.com/opsworks/latest/APIReference/API_CreateUserProfile.html AWS API Reference> for CreateUserProfile.
module Network.AWS.OpsWorks.CreateUserProfile
    (
    -- * Creating a Request
      createUserProfile
    , CreateUserProfile
    -- * Request Lenses
    , cupSSHUsername
    , cupSSHPublicKey
    , cupAllowSelfManagement
    , cupIAMUserARN

    -- * Destructuring the Response
    , createUserProfileResponse
    , CreateUserProfileResponse
    -- * Response Lenses
    , cuprsIAMUserARN
    , cuprsStatus
    ) where

import           Network.AWS.OpsWorks.Types
import           Network.AWS.OpsWorks.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'createUserProfile' smart constructor.
data CreateUserProfile = CreateUserProfile'
    { _cupSSHUsername         :: !(Maybe Text)
    , _cupSSHPublicKey        :: !(Maybe Text)
    , _cupAllowSelfManagement :: !(Maybe Bool)
    , _cupIAMUserARN          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cupSSHUsername'
--
-- * 'cupSSHPublicKey'
--
-- * 'cupAllowSelfManagement'
--
-- * 'cupIAMUserARN'
createUserProfile
    :: Text -- ^ 'cupIAMUserARN'
    -> CreateUserProfile
createUserProfile pIAMUserARN_ =
    CreateUserProfile'
    { _cupSSHUsername = Nothing
    , _cupSSHPublicKey = Nothing
    , _cupAllowSelfManagement = Nothing
    , _cupIAMUserARN = pIAMUserARN_
    }

-- | The user\'s SSH user name. The allowable characters are [a-z], [A-Z],
-- [0-9], \'-\', and \'_\'. If the specified name includes other
-- punctuation marks, AWS OpsWorks removes them. For example, 'my.name'
-- will be changed to 'myname'. If you do not specify an SSH user name, AWS
-- OpsWorks generates one from the IAM user name.
cupSSHUsername :: Lens' CreateUserProfile (Maybe Text)
cupSSHUsername = lens _cupSSHUsername (\ s a -> s{_cupSSHUsername = a});

-- | The user\'s public SSH key.
cupSSHPublicKey :: Lens' CreateUserProfile (Maybe Text)
cupSSHPublicKey = lens _cupSSHPublicKey (\ s a -> s{_cupSSHPublicKey = a});

-- | Whether users can specify their own SSH public key through the My
-- Settings page. For more information, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html Setting an IAM User\'s Public SSH Key>.
cupAllowSelfManagement :: Lens' CreateUserProfile (Maybe Bool)
cupAllowSelfManagement = lens _cupAllowSelfManagement (\ s a -> s{_cupAllowSelfManagement = a});

-- | The user\'s IAM ARN.
cupIAMUserARN :: Lens' CreateUserProfile Text
cupIAMUserARN = lens _cupIAMUserARN (\ s a -> s{_cupIAMUserARN = a});

instance AWSRequest CreateUserProfile where
        type Sv CreateUserProfile = OpsWorks
        type Rs CreateUserProfile = CreateUserProfileResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 CreateUserProfileResponse' <$>
                   (x .?> "IamUserArn") <*> (pure (fromEnum s)))

instance ToHeaders CreateUserProfile where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("OpsWorks_20130218.CreateUserProfile" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateUserProfile where
        toJSON CreateUserProfile'{..}
          = object
              (catMaybes
                 [("SshUsername" .=) <$> _cupSSHUsername,
                  ("SshPublicKey" .=) <$> _cupSSHPublicKey,
                  ("AllowSelfManagement" .=) <$>
                    _cupAllowSelfManagement,
                  Just ("IamUserArn" .= _cupIAMUserARN)])

instance ToPath CreateUserProfile where
        toPath = const "/"

instance ToQuery CreateUserProfile where
        toQuery = const mempty

-- | Contains the response to a 'CreateUserProfile' request.
--
-- /See:/ 'createUserProfileResponse' smart constructor.
data CreateUserProfileResponse = CreateUserProfileResponse'
    { _cuprsIAMUserARN :: !(Maybe Text)
    , _cuprsStatus     :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuprsIAMUserARN'
--
-- * 'cuprsStatus'
createUserProfileResponse
    :: Int -- ^ 'cuprsStatus'
    -> CreateUserProfileResponse
createUserProfileResponse pStatus_ =
    CreateUserProfileResponse'
    { _cuprsIAMUserARN = Nothing
    , _cuprsStatus = pStatus_
    }

-- | The user\'s IAM ARN.
cuprsIAMUserARN :: Lens' CreateUserProfileResponse (Maybe Text)
cuprsIAMUserARN = lens _cuprsIAMUserARN (\ s a -> s{_cuprsIAMUserARN = a});

-- | The response status code.
cuprsStatus :: Lens' CreateUserProfileResponse Int
cuprsStatus = lens _cuprsStatus (\ s a -> s{_cuprsStatus = a});
