# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/enums/user_list_prepopulation_status.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.enums.UserListPrepopulationStatusEnum" do
  end
  add_enum "google.ads.googleads.v2.enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :REQUESTED, 2
    value :FINISHED, 3
    value :FAILED, 4
  end
end

module Google::Ads::GoogleAds::V2::Enums
  UserListPrepopulationStatusEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.UserListPrepopulationStatusEnum").msgclass
  UserListPrepopulationStatusEnum::UserListPrepopulationStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus").enummodule
end
