# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/enums/product_bidding_category_status.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.enums.ProductBiddingCategoryStatusEnum" do
  end
  add_enum "google.ads.googleads.v2.enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :ACTIVE, 2
    value :OBSOLETE, 3
  end
end

module Google::Ads::GoogleAds::V2::Enums
  ProductBiddingCategoryStatusEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.ProductBiddingCategoryStatusEnum").msgclass
  ProductBiddingCategoryStatusEnum::ProductBiddingCategoryStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus").enummodule
end
