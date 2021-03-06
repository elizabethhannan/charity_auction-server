module V1
  class AuctionResource < BaseResource
    attribute :starts_at
    attribute :ends_at
    attribute :time_zone_id
    attribute :physical_address
    attribute :name
    attribute :donation_window_ends_at

    has_one :organization

    has_many :donations

    has_many :donors

    has_many :tickets

    has_many :bidders

    has_many :bid_groups

    has_many :auction_items

    has_many :payments

    class << self
      def creatable_fields(context)
        super - [:donations, :donors, :tickets, :bidders, :bid_groups, :auction_items, :payments]
      end
      alias_method :updatable_fields, :creatable_fields
    end
  end
end
