# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/enums/bidding_strategy_status.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.enums.BiddingStrategyStatusEnum" do
  end
  add_enum "google.ads.googleads.v1.enums.BiddingStrategyStatusEnum.BiddingStrategyStatus" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :ENABLED, 2
    value :REMOVED, 4
  end
end

module Google::Ads::GoogleAds::V1::Enums
  BiddingStrategyStatusEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.enums.BiddingStrategyStatusEnum").msgclass
  BiddingStrategyStatusEnum::BiddingStrategyStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.enums.BiddingStrategyStatusEnum.BiddingStrategyStatus").enummodule
end
