# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/enums/campaign_serving_status.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.enums.CampaignServingStatusEnum" do
  end
  add_enum "google.ads.googleads.v2.enums.CampaignServingStatusEnum.CampaignServingStatus" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :SERVING, 2
    value :NONE, 3
    value :ENDED, 4
    value :PENDING, 5
    value :SUSPENDED, 6
  end
end

module Google::Ads::GoogleAds::V2::Enums
  CampaignServingStatusEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.CampaignServingStatusEnum").msgclass
  CampaignServingStatusEnum::CampaignServingStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.CampaignServingStatusEnum.CampaignServingStatus").enummodule
end
