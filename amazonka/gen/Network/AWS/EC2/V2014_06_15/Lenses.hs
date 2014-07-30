{-# LANGUAGE TemplateHaskell             #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.EC2.V2014_06_15.Lenses
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.EC2.V2014_06_15.Lenses where

import Control.Lens.TH
import Network.AWS.EC2.V2014_06_15.Types
import Network.AWS.EC2.V2014_06_15.ImportInstance
import Network.AWS.EC2.V2014_06_15.RevokeSecurityGroupEgress
import Network.AWS.EC2.V2014_06_15.CreateVpnGateway
import Network.AWS.EC2.V2014_06_15.CreateNetworkAcl
import Network.AWS.EC2.V2014_06_15.DeleteKeyPair
import Network.AWS.EC2.V2014_06_15.DescribeTags
import Network.AWS.EC2.V2014_06_15.DetachNetworkInterface
import Network.AWS.EC2.V2014_06_15.DetachInternetGateway
import Network.AWS.EC2.V2014_06_15.ModifySubnetAttribute
import Network.AWS.EC2.V2014_06_15.DetachVolume
import Network.AWS.EC2.V2014_06_15.CancelBundleTask
import Network.AWS.EC2.V2014_06_15.ReleaseAddress
import Network.AWS.EC2.V2014_06_15.CreateInternetGateway
import Network.AWS.EC2.V2014_06_15.DeleteVpnConnection
import Network.AWS.EC2.V2014_06_15.DescribeBundleTasks
import Network.AWS.EC2.V2014_06_15.AuthorizeSecurityGroupEgress
import Network.AWS.EC2.V2014_06_15.DeregisterImage
import Network.AWS.EC2.V2014_06_15.ModifyNetworkInterfaceAttribute
import Network.AWS.EC2.V2014_06_15.CancelReservedInstancesListing
import Network.AWS.EC2.V2014_06_15.DescribeSpotPriceHistory
import Network.AWS.EC2.V2014_06_15.DescribeDhcpOptions
import Network.AWS.EC2.V2014_06_15.StopInstances
import Network.AWS.EC2.V2014_06_15.DescribeInternetGateways
import Network.AWS.EC2.V2014_06_15.BundleInstance
import Network.AWS.EC2.V2014_06_15.DescribeNetworkInterfaces
import Network.AWS.EC2.V2014_06_15.ReplaceNetworkAclAssociation
import Network.AWS.EC2.V2014_06_15.DescribeAddresses
import Network.AWS.EC2.V2014_06_15.DescribeSnapshotAttribute
import Network.AWS.EC2.V2014_06_15.ReplaceRoute
import Network.AWS.EC2.V2014_06_15.AuthorizeSecurityGroupIngress
import Network.AWS.EC2.V2014_06_15.CreateVpcPeeringConnection
import Network.AWS.EC2.V2014_06_15.DescribeSubnets
import Network.AWS.EC2.V2014_06_15.CreateTags
import Network.AWS.EC2.V2014_06_15.PurchaseReservedInstancesOffering
import Network.AWS.EC2.V2014_06_15.DeleteNetworkAclEntry
import Network.AWS.EC2.V2014_06_15.ResetSnapshotAttribute
import Network.AWS.EC2.V2014_06_15.DescribeVpnConnections
import Network.AWS.EC2.V2014_06_15.DeleteRoute
import Network.AWS.EC2.V2014_06_15.ReplaceNetworkAclEntry
import Network.AWS.EC2.V2014_06_15.ResetInstanceAttribute
import Network.AWS.EC2.V2014_06_15.AttachNetworkInterface
import Network.AWS.EC2.V2014_06_15.DescribeInstanceStatus
import Network.AWS.EC2.V2014_06_15.ImportKeyPair
import Network.AWS.EC2.V2014_06_15.DeleteTags
import Network.AWS.EC2.V2014_06_15.ConfirmProductInstance
import Network.AWS.EC2.V2014_06_15.DescribeInstanceAttribute
import Network.AWS.EC2.V2014_06_15.DescribeReservedInstancesOfferings
import Network.AWS.EC2.V2014_06_15.CreateCustomerGateway
import Network.AWS.EC2.V2014_06_15.DeleteSecurityGroup
import Network.AWS.EC2.V2014_06_15.DeleteVpcPeeringConnection
import Network.AWS.EC2.V2014_06_15.AttachInternetGateway
import Network.AWS.EC2.V2014_06_15.RunInstances
import Network.AWS.EC2.V2014_06_15.AssociateDhcpOptions
import Network.AWS.EC2.V2014_06_15.DescribeReservedInstances
import Network.AWS.EC2.V2014_06_15.DescribeVpcs
import Network.AWS.EC2.V2014_06_15.DescribeConversionTasks
import Network.AWS.EC2.V2014_06_15.AllocateAddress
import Network.AWS.EC2.V2014_06_15.CancelConversionTask
import Network.AWS.EC2.V2014_06_15.ModifyImageAttribute
import Network.AWS.EC2.V2014_06_15.CreateRouteTable
import Network.AWS.EC2.V2014_06_15.ReportInstanceStatus
import Network.AWS.EC2.V2014_06_15.AttachVolume
import Network.AWS.EC2.V2014_06_15.RequestSpotInstances
import Network.AWS.EC2.V2014_06_15.DescribeVolumes
import Network.AWS.EC2.V2014_06_15.RejectVpcPeeringConnection
import Network.AWS.EC2.V2014_06_15.DeleteVpnConnectionRoute
import Network.AWS.EC2.V2014_06_15.RegisterImage
import Network.AWS.EC2.V2014_06_15.RevokeSecurityGroupIngress
import Network.AWS.EC2.V2014_06_15.ModifyReservedInstances
import Network.AWS.EC2.V2014_06_15.DeleteNetworkAcl
import Network.AWS.EC2.V2014_06_15.DeleteVpnGateway
import Network.AWS.EC2.V2014_06_15.DescribeVolumeAttribute
import Network.AWS.EC2.V2014_06_15.GetPasswordData
import Network.AWS.EC2.V2014_06_15.CreateVpc
import Network.AWS.EC2.V2014_06_15.CopySnapshot
import Network.AWS.EC2.V2014_06_15.DisassociateAddress
import Network.AWS.EC2.V2014_06_15.DeleteVpc
import Network.AWS.EC2.V2014_06_15.CreateInstanceExportTask
import Network.AWS.EC2.V2014_06_15.DescribeVpcAttribute
import Network.AWS.EC2.V2014_06_15.CreateVolume
import Network.AWS.EC2.V2014_06_15.ModifyVolumeAttribute
import Network.AWS.EC2.V2014_06_15.DescribeSpotDatafeedSubscription
import Network.AWS.EC2.V2014_06_15.DeletePlacementGroup
import Network.AWS.EC2.V2014_06_15.CreateSubnet
import Network.AWS.EC2.V2014_06_15.CreateNetworkInterface
import Network.AWS.EC2.V2014_06_15.DescribeSecurityGroups
import Network.AWS.EC2.V2014_06_15.DescribeExportTasks
import Network.AWS.EC2.V2014_06_15.DetachVpnGateway
import Network.AWS.EC2.V2014_06_15.EnableVolumeIO
import Network.AWS.EC2.V2014_06_15.DescribeInstances
import Network.AWS.EC2.V2014_06_15.DescribeVpcPeeringConnections
import Network.AWS.EC2.V2014_06_15.CancelExportTask
import Network.AWS.EC2.V2014_06_15.DeleteNetworkInterface
import Network.AWS.EC2.V2014_06_15.ReplaceRouteTableAssociation
import Network.AWS.EC2.V2014_06_15.StartInstances
import Network.AWS.EC2.V2014_06_15.CreatePlacementGroup
import Network.AWS.EC2.V2014_06_15.DescribeSnapshots
import Network.AWS.EC2.V2014_06_15.AssociateAddress
import Network.AWS.EC2.V2014_06_15.DescribeNetworkInterfaceAttribute
import Network.AWS.EC2.V2014_06_15.ResetNetworkInterfaceAttribute
import Network.AWS.EC2.V2014_06_15.DeleteInternetGateway
import Network.AWS.EC2.V2014_06_15.DescribeReservedInstancesListings
import Network.AWS.EC2.V2014_06_15.CreateVpnConnection
import Network.AWS.EC2.V2014_06_15.DescribeCustomerGateways
import Network.AWS.EC2.V2014_06_15.DeleteSubnet
import Network.AWS.EC2.V2014_06_15.CopyImage
import Network.AWS.EC2.V2014_06_15.UnmonitorInstances
import Network.AWS.EC2.V2014_06_15.CreateSecurityGroup
import Network.AWS.EC2.V2014_06_15.ImportVolume
import Network.AWS.EC2.V2014_06_15.DisableVgwRoutePropagation
import Network.AWS.EC2.V2014_06_15.CreateSpotDatafeedSubscription
import Network.AWS.EC2.V2014_06_15.CancelSpotInstanceRequests
import Network.AWS.EC2.V2014_06_15.CreateRoute
import Network.AWS.EC2.V2014_06_15.DeleteSnapshot
import Network.AWS.EC2.V2014_06_15.AssignPrivateIpAddresses
import Network.AWS.EC2.V2014_06_15.ModifyInstanceAttribute
import Network.AWS.EC2.V2014_06_15.DeleteCustomerGateway
import Network.AWS.EC2.V2014_06_15.DisassociateRouteTable
import Network.AWS.EC2.V2014_06_15.DeleteSpotDatafeedSubscription
import Network.AWS.EC2.V2014_06_15.DescribePlacementGroups
import Network.AWS.EC2.V2014_06_15.EnableVgwRoutePropagation
import Network.AWS.EC2.V2014_06_15.ModifySnapshotAttribute
import Network.AWS.EC2.V2014_06_15.CreateSnapshot
import Network.AWS.EC2.V2014_06_15.CreateNetworkAclEntry
import Network.AWS.EC2.V2014_06_15.CreateReservedInstancesListing
import Network.AWS.EC2.V2014_06_15.AttachVpnGateway
import Network.AWS.EC2.V2014_06_15.CreateDhcpOptions
import Network.AWS.EC2.V2014_06_15.DescribeAccountAttributes
import Network.AWS.EC2.V2014_06_15.RebootInstances
import Network.AWS.EC2.V2014_06_15.CreateImage
import Network.AWS.EC2.V2014_06_15.TerminateInstances
import Network.AWS.EC2.V2014_06_15.DescribeKeyPairs
import Network.AWS.EC2.V2014_06_15.CreateVpnConnectionRoute
import Network.AWS.EC2.V2014_06_15.AssociateRouteTable
import Network.AWS.EC2.V2014_06_15.DescribeVpnGateways
import Network.AWS.EC2.V2014_06_15.GetConsoleOutput
import Network.AWS.EC2.V2014_06_15.DescribeImageAttribute
import Network.AWS.EC2.V2014_06_15.DeleteRouteTable
import Network.AWS.EC2.V2014_06_15.ResetImageAttribute
import Network.AWS.EC2.V2014_06_15.DescribeReservedInstancesModifications
import Network.AWS.EC2.V2014_06_15.DescribeSpotInstanceRequests
import Network.AWS.EC2.V2014_06_15.UnassignPrivateIpAddresses
import Network.AWS.EC2.V2014_06_15.DeleteDhcpOptions
import Network.AWS.EC2.V2014_06_15.DescribeNetworkAcls
import Network.AWS.EC2.V2014_06_15.DescribeRegions
import Network.AWS.EC2.V2014_06_15.MonitorInstances
import Network.AWS.EC2.V2014_06_15.AcceptVpcPeeringConnection
import Network.AWS.EC2.V2014_06_15.DescribeVolumeStatus
import Network.AWS.EC2.V2014_06_15.DescribeRouteTables
import Network.AWS.EC2.V2014_06_15.DescribeAvailabilityZones
import Network.AWS.EC2.V2014_06_15.ModifyVpcAttribute
import Network.AWS.EC2.V2014_06_15.DescribeImages
import Network.AWS.EC2.V2014_06_15.CreateKeyPair
import Network.AWS.EC2.V2014_06_15.DeleteVolume

-- Newtypes
makeIso ''AccountAttributeValue
makeIso ''AttributeBooleanValue
makeIso ''AttributeValue
makeIso ''AvailabilityZoneMessage
makeIso ''IpRange
makeIso ''Monitoring
makeIso ''PropagatingVgw
makeIso ''ReservedInstancesId
makeIso ''RunInstancesMonitoringEnabled
makeIso ''Storage
makeIso ''VolumeDetail
makeIso ''VpnConnectionOptions
makeIso ''VpnConnectionOptionsSpecification

-- Products
makeLenses ''AccountAttribute
makeLenses ''Address
makeLenses ''AvailabilityZone
makeLenses ''BlockDeviceMapping
makeLenses ''BundleTask
makeLenses ''BundleTaskError
makeLenses ''CancelledSpotInstanceRequest
makeLenses ''ConversionTask
makeLenses ''CreateVolumePermission
makeLenses ''CreateVolumePermissionModifications
makeLenses ''CustomerGateway
makeLenses ''DhcpConfiguration
makeLenses ''DhcpOptions
makeLenses ''DiskImage
makeLenses ''DiskImageDescription
makeLenses ''DiskImageDetail
makeLenses ''DiskImageVolumeDescription
makeLenses ''EbsBlockDevice
makeLenses ''EbsInstanceBlockDevice
makeLenses ''EbsInstanceBlockDeviceSpecification
makeLenses ''ExportTask
makeLenses ''ExportToS3Task
makeLenses ''ExportToS3TaskSpecification
makeLenses ''Filter
makeLenses ''GroupIdentifier
makeLenses ''IamInstanceProfile
makeLenses ''IamInstanceProfileSpecification
makeLenses ''IcmpTypeCode
makeLenses ''Image
makeLenses ''ImportInstanceLaunchSpecification
makeLenses ''ImportInstanceTaskDetails
makeLenses ''ImportInstanceVolumeDetailItem
makeLenses ''ImportVolumeTaskDetails
makeLenses ''Instance
makeLenses ''InstanceBlockDeviceMapping
makeLenses ''InstanceBlockDeviceMappingSpecification
makeLenses ''InstanceCount
makeLenses ''InstanceExportDetails
makeLenses ''InstanceMonitoring
makeLenses ''InstanceNetworkInterface
makeLenses ''InstanceNetworkInterfaceAssociation
makeLenses ''InstanceNetworkInterfaceAttachment
makeLenses ''InstanceNetworkInterfaceSpecification
makeLenses ''InstancePrivateIpAddress
makeLenses ''InstanceState
makeLenses ''InstanceStateChange
makeLenses ''InstanceStatus
makeLenses ''InstanceStatusDetails
makeLenses ''InstanceStatusEvent
makeLenses ''InstanceStatusSummary
makeLenses ''InternetGateway
makeLenses ''InternetGatewayAttachment
makeLenses ''IpPermission
makeLenses ''KeyPairInfo
makeLenses ''LaunchPermission
makeLenses ''LaunchPermissionModifications
makeLenses ''LaunchSpecification
makeLenses ''NetworkAcl
makeLenses ''NetworkAclAssociation
makeLenses ''NetworkAclEntry
makeLenses ''NetworkInterface
makeLenses ''NetworkInterfaceAssociation
makeLenses ''NetworkInterfaceAttachment
makeLenses ''NetworkInterfaceAttachmentChanges
makeLenses ''NetworkInterfacePrivateIpAddress
makeLenses ''Placement
makeLenses ''PlacementGroup
makeLenses ''PortRange
makeLenses ''PriceSchedule
makeLenses ''PriceScheduleSpecification
makeLenses ''PricingDetail
makeLenses ''PrivateIpAddressSpecification
makeLenses ''ProductCode
makeLenses ''RecurringCharge
makeLenses ''Region
makeLenses ''Reservation
makeLenses ''ReservedInstanceLimitPrice
makeLenses ''ReservedInstances
makeLenses ''ReservedInstancesConfiguration
makeLenses ''ReservedInstancesListing
makeLenses ''ReservedInstancesModification
makeLenses ''ReservedInstancesModificationResult
makeLenses ''ReservedInstancesOffering
makeLenses ''Route
makeLenses ''RouteTable
makeLenses ''RouteTableAssociation
makeLenses ''S3Storage
makeLenses ''SecurityGroup
makeLenses ''Snapshot
makeLenses ''SpotDatafeedSubscription
makeLenses ''SpotInstanceRequest
makeLenses ''SpotInstanceStateFault
makeLenses ''SpotInstanceStatus
makeLenses ''SpotPlacement
makeLenses ''SpotPrice
makeLenses ''StateReason
makeLenses ''Subnet
makeLenses ''Tag
makeLenses ''TagDescription
makeLenses ''UserIdGroupPair
makeLenses ''VgwTelemetry
makeLenses ''Volume
makeLenses ''VolumeAttachment
makeLenses ''VolumeStatusAction
makeLenses ''VolumeStatusDetails
makeLenses ''VolumeStatusEvent
makeLenses ''VolumeStatusInfo
makeLenses ''VolumeStatusItem
makeLenses ''Vpc
makeLenses ''VpcAttachment
makeLenses ''VpcPeeringConnection
makeLenses ''VpcPeeringConnectionStateReason
makeLenses ''VpcPeeringConnectionVpcInfo
makeLenses ''VpnConnection
makeLenses ''VpnGateway
makeLenses ''VpnStaticRoute

-- Requests
makeLenses ''ImportInstance
makeLenses ''RevokeSecurityGroupEgress
makeLenses ''CreateVpnGateway
makeLenses ''CreateNetworkAcl
makeLenses ''DeleteKeyPair
makeLenses ''DescribeTags
makeLenses ''DetachNetworkInterface
makeLenses ''DetachInternetGateway
makeLenses ''ModifySubnetAttribute
makeLenses ''DetachVolume
makeLenses ''CancelBundleTask
makeLenses ''ReleaseAddress
makeLenses ''CreateInternetGateway
makeLenses ''DeleteVpnConnection
makeLenses ''DescribeBundleTasks
makeLenses ''AuthorizeSecurityGroupEgress
makeLenses ''DeregisterImage
makeLenses ''ModifyNetworkInterfaceAttribute
makeLenses ''CancelReservedInstancesListing
makeLenses ''DescribeSpotPriceHistory
makeLenses ''DescribeDhcpOptions
makeLenses ''StopInstances
makeLenses ''DescribeInternetGateways
makeLenses ''BundleInstance
makeLenses ''DescribeNetworkInterfaces
makeLenses ''ReplaceNetworkAclAssociation
makeLenses ''DescribeAddresses
makeLenses ''DescribeSnapshotAttribute
makeLenses ''ReplaceRoute
makeLenses ''AuthorizeSecurityGroupIngress
makeLenses ''CreateVpcPeeringConnection
makeLenses ''DescribeSubnets
makeLenses ''CreateTags
makeLenses ''PurchaseReservedInstancesOffering
makeLenses ''DeleteNetworkAclEntry
makeLenses ''ResetSnapshotAttribute
makeLenses ''DescribeVpnConnections
makeLenses ''DeleteRoute
makeLenses ''ReplaceNetworkAclEntry
makeLenses ''ResetInstanceAttribute
makeLenses ''AttachNetworkInterface
makeLenses ''DescribeInstanceStatus
makeLenses ''ImportKeyPair
makeLenses ''DeleteTags
makeLenses ''ConfirmProductInstance
makeLenses ''DescribeInstanceAttribute
makeLenses ''DescribeReservedInstancesOfferings
makeLenses ''CreateCustomerGateway
makeLenses ''DeleteSecurityGroup
makeLenses ''DeleteVpcPeeringConnection
makeLenses ''AttachInternetGateway
makeLenses ''RunInstances
makeLenses ''AssociateDhcpOptions
makeLenses ''DescribeReservedInstances
makeLenses ''DescribeVpcs
makeLenses ''DescribeConversionTasks
makeLenses ''AllocateAddress
makeLenses ''CancelConversionTask
makeLenses ''ModifyImageAttribute
makeLenses ''CreateRouteTable
makeLenses ''ReportInstanceStatus
makeLenses ''AttachVolume
makeLenses ''RequestSpotInstances
makeLenses ''DescribeVolumes
makeLenses ''RejectVpcPeeringConnection
makeLenses ''DeleteVpnConnectionRoute
makeLenses ''RegisterImage
makeLenses ''RevokeSecurityGroupIngress
makeLenses ''ModifyReservedInstances
makeLenses ''DeleteNetworkAcl
makeLenses ''DeleteVpnGateway
makeLenses ''DescribeVolumeAttribute
makeLenses ''GetPasswordData
makeLenses ''CreateVpc
makeLenses ''CopySnapshot
makeLenses ''DisassociateAddress
makeLenses ''DeleteVpc
makeLenses ''CreateInstanceExportTask
makeLenses ''DescribeVpcAttribute
makeLenses ''CreateVolume
makeLenses ''ModifyVolumeAttribute
makeLenses ''DescribeSpotDatafeedSubscription
makeLenses ''DeletePlacementGroup
makeLenses ''CreateSubnet
makeLenses ''CreateNetworkInterface
makeLenses ''DescribeSecurityGroups
makeLenses ''DescribeExportTasks
makeLenses ''DetachVpnGateway
makeLenses ''EnableVolumeIO
makeLenses ''DescribeInstances
makeLenses ''DescribeVpcPeeringConnections
makeLenses ''CancelExportTask
makeLenses ''DeleteNetworkInterface
makeLenses ''ReplaceRouteTableAssociation
makeLenses ''StartInstances
makeLenses ''CreatePlacementGroup
makeLenses ''DescribeSnapshots
makeLenses ''AssociateAddress
makeLenses ''DescribeNetworkInterfaceAttribute
makeLenses ''ResetNetworkInterfaceAttribute
makeLenses ''DeleteInternetGateway
makeLenses ''DescribeReservedInstancesListings
makeLenses ''CreateVpnConnection
makeLenses ''DescribeCustomerGateways
makeLenses ''DeleteSubnet
makeLenses ''CopyImage
makeLenses ''UnmonitorInstances
makeLenses ''CreateSecurityGroup
makeLenses ''ImportVolume
makeLenses ''DisableVgwRoutePropagation
makeLenses ''CreateSpotDatafeedSubscription
makeLenses ''CancelSpotInstanceRequests
makeLenses ''CreateRoute
makeLenses ''DeleteSnapshot
makeLenses ''AssignPrivateIpAddresses
makeLenses ''ModifyInstanceAttribute
makeLenses ''DeleteCustomerGateway
makeLenses ''DisassociateRouteTable
makeLenses ''DeleteSpotDatafeedSubscription
makeLenses ''DescribePlacementGroups
makeLenses ''EnableVgwRoutePropagation
makeLenses ''ModifySnapshotAttribute
makeLenses ''CreateSnapshot
makeLenses ''CreateNetworkAclEntry
makeLenses ''CreateReservedInstancesListing
makeLenses ''AttachVpnGateway
makeLenses ''CreateDhcpOptions
makeLenses ''DescribeAccountAttributes
makeLenses ''RebootInstances
makeLenses ''CreateImage
makeLenses ''TerminateInstances
makeLenses ''DescribeKeyPairs
makeLenses ''CreateVpnConnectionRoute
makeLenses ''AssociateRouteTable
makeLenses ''DescribeVpnGateways
makeLenses ''GetConsoleOutput
makeLenses ''DescribeImageAttribute
makeLenses ''DeleteRouteTable
makeLenses ''ResetImageAttribute
makeLenses ''DescribeReservedInstancesModifications
makeLenses ''DescribeSpotInstanceRequests
makeLenses ''UnassignPrivateIpAddresses
makeLenses ''DeleteDhcpOptions
makeLenses ''DescribeNetworkAcls
makeLenses ''DescribeRegions
makeLenses ''MonitorInstances
makeLenses ''AcceptVpcPeeringConnection
makeLenses ''DescribeVolumeStatus
makeLenses ''DescribeRouteTables
makeLenses ''DescribeAvailabilityZones
makeLenses ''ModifyVpcAttribute
makeLenses ''DescribeImages
makeLenses ''CreateKeyPair
makeLenses ''DeleteVolume

-- Responses
makeLenses ''ImportInstanceResponse
makeLenses ''RevokeSecurityGroupEgressResponse
makeLenses ''CreateVpnGatewayResponse
makeLenses ''CreateNetworkAclResponse
makeLenses ''DeleteKeyPairResponse
makeLenses ''DescribeTagsResponse
makeLenses ''DetachNetworkInterfaceResponse
makeLenses ''DetachInternetGatewayResponse
makeLenses ''ModifySubnetAttributeResponse
makeLenses ''DetachVolumeResponse
makeLenses ''CancelBundleTaskResponse
makeLenses ''ReleaseAddressResponse
makeLenses ''CreateInternetGatewayResponse
makeLenses ''DeleteVpnConnectionResponse
makeLenses ''DescribeBundleTasksResponse
makeLenses ''AuthorizeSecurityGroupEgressResponse
makeLenses ''DeregisterImageResponse
makeLenses ''ModifyNetworkInterfaceAttributeResponse
makeLenses ''CancelReservedInstancesListingResponse
makeLenses ''DescribeSpotPriceHistoryResponse
makeLenses ''DescribeDhcpOptionsResponse
makeLenses ''StopInstancesResponse
makeLenses ''DescribeInternetGatewaysResponse
makeLenses ''BundleInstanceResponse
makeLenses ''DescribeNetworkInterfacesResponse
makeLenses ''ReplaceNetworkAclAssociationResponse
makeLenses ''DescribeAddressesResponse
makeLenses ''DescribeSnapshotAttributeResponse
makeLenses ''ReplaceRouteResponse
makeLenses ''AuthorizeSecurityGroupIngressResponse
makeLenses ''CreateVpcPeeringConnectionResponse
makeLenses ''DescribeSubnetsResponse
makeLenses ''CreateTagsResponse
makeLenses ''PurchaseReservedInstancesOfferingResponse
makeLenses ''DeleteNetworkAclEntryResponse
makeLenses ''ResetSnapshotAttributeResponse
makeLenses ''DescribeVpnConnectionsResponse
makeLenses ''DeleteRouteResponse
makeLenses ''ReplaceNetworkAclEntryResponse
makeLenses ''ResetInstanceAttributeResponse
makeLenses ''AttachNetworkInterfaceResponse
makeLenses ''DescribeInstanceStatusResponse
makeLenses ''ImportKeyPairResponse
makeLenses ''DeleteTagsResponse
makeLenses ''ConfirmProductInstanceResponse
makeLenses ''DescribeInstanceAttributeResponse
makeLenses ''DescribeReservedInstancesOfferingsResponse
makeLenses ''CreateCustomerGatewayResponse
makeLenses ''DeleteSecurityGroupResponse
makeLenses ''DeleteVpcPeeringConnectionResponse
makeLenses ''AttachInternetGatewayResponse
makeLenses ''RunInstancesResponse
makeLenses ''AssociateDhcpOptionsResponse
makeLenses ''DescribeReservedInstancesResponse
makeLenses ''DescribeVpcsResponse
makeLenses ''DescribeConversionTasksResponse
makeLenses ''AllocateAddressResponse
makeLenses ''CancelConversionTaskResponse
makeLenses ''ModifyImageAttributeResponse
makeLenses ''CreateRouteTableResponse
makeLenses ''ReportInstanceStatusResponse
makeLenses ''AttachVolumeResponse
makeLenses ''RequestSpotInstancesResponse
makeLenses ''DescribeVolumesResponse
makeLenses ''RejectVpcPeeringConnectionResponse
makeLenses ''DeleteVpnConnectionRouteResponse
makeLenses ''RegisterImageResponse
makeLenses ''RevokeSecurityGroupIngressResponse
makeLenses ''ModifyReservedInstancesResponse
makeLenses ''DeleteNetworkAclResponse
makeLenses ''DeleteVpnGatewayResponse
makeLenses ''DescribeVolumeAttributeResponse
makeLenses ''GetPasswordDataResponse
makeLenses ''CreateVpcResponse
makeLenses ''CopySnapshotResponse
makeLenses ''DisassociateAddressResponse
makeLenses ''DeleteVpcResponse
makeLenses ''CreateInstanceExportTaskResponse
makeLenses ''DescribeVpcAttributeResponse
makeLenses ''CreateVolumeResponse
makeLenses ''ModifyVolumeAttributeResponse
makeLenses ''DescribeSpotDatafeedSubscriptionResponse
makeLenses ''DeletePlacementGroupResponse
makeLenses ''CreateSubnetResponse
makeLenses ''CreateNetworkInterfaceResponse
makeLenses ''DescribeSecurityGroupsResponse
makeLenses ''DescribeExportTasksResponse
makeLenses ''DetachVpnGatewayResponse
makeLenses ''EnableVolumeIOResponse
makeLenses ''DescribeInstancesResponse
makeLenses ''DescribeVpcPeeringConnectionsResponse
makeLenses ''CancelExportTaskResponse
makeLenses ''DeleteNetworkInterfaceResponse
makeLenses ''ReplaceRouteTableAssociationResponse
makeLenses ''StartInstancesResponse
makeLenses ''CreatePlacementGroupResponse
makeLenses ''DescribeSnapshotsResponse
makeLenses ''AssociateAddressResponse
makeLenses ''DescribeNetworkInterfaceAttributeResponse
makeLenses ''ResetNetworkInterfaceAttributeResponse
makeLenses ''DeleteInternetGatewayResponse
makeLenses ''DescribeReservedInstancesListingsResponse
makeLenses ''CreateVpnConnectionResponse
makeLenses ''DescribeCustomerGatewaysResponse
makeLenses ''DeleteSubnetResponse
makeLenses ''CopyImageResponse
makeLenses ''UnmonitorInstancesResponse
makeLenses ''CreateSecurityGroupResponse
makeLenses ''ImportVolumeResponse
makeLenses ''DisableVgwRoutePropagationResponse
makeLenses ''CreateSpotDatafeedSubscriptionResponse
makeLenses ''CancelSpotInstanceRequestsResponse
makeLenses ''CreateRouteResponse
makeLenses ''DeleteSnapshotResponse
makeLenses ''AssignPrivateIpAddressesResponse
makeLenses ''ModifyInstanceAttributeResponse
makeLenses ''DeleteCustomerGatewayResponse
makeLenses ''DisassociateRouteTableResponse
makeLenses ''DeleteSpotDatafeedSubscriptionResponse
makeLenses ''DescribePlacementGroupsResponse
makeLenses ''EnableVgwRoutePropagationResponse
makeLenses ''ModifySnapshotAttributeResponse
makeLenses ''CreateSnapshotResponse
makeLenses ''CreateNetworkAclEntryResponse
makeLenses ''CreateReservedInstancesListingResponse
makeLenses ''AttachVpnGatewayResponse
makeLenses ''CreateDhcpOptionsResponse
makeLenses ''DescribeAccountAttributesResponse
makeLenses ''RebootInstancesResponse
makeLenses ''CreateImageResponse
makeLenses ''TerminateInstancesResponse
makeLenses ''DescribeKeyPairsResponse
makeLenses ''CreateVpnConnectionRouteResponse
makeLenses ''AssociateRouteTableResponse
makeLenses ''DescribeVpnGatewaysResponse
makeLenses ''GetConsoleOutputResponse
makeLenses ''DescribeImageAttributeResponse
makeLenses ''DeleteRouteTableResponse
makeLenses ''ResetImageAttributeResponse
makeLenses ''DescribeReservedInstancesModificationsResponse
makeLenses ''DescribeSpotInstanceRequestsResponse
makeLenses ''UnassignPrivateIpAddressesResponse
makeLenses ''DeleteDhcpOptionsResponse
makeLenses ''DescribeNetworkAclsResponse
makeLenses ''DescribeRegionsResponse
makeLenses ''MonitorInstancesResponse
makeLenses ''AcceptVpcPeeringConnectionResponse
makeLenses ''DescribeVolumeStatusResponse
makeLenses ''DescribeRouteTablesResponse
makeLenses ''DescribeAvailabilityZonesResponse
makeLenses ''ModifyVpcAttributeResponse
makeLenses ''DescribeImagesResponse
makeLenses ''CreateKeyPairResponse
makeLenses ''DeleteVolumeResponse
