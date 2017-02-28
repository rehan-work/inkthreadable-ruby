require 'inkthreadable/order'
require 'inkthreadable/api'
require 'open-uri'
require 'json'
require 'digest/sha1'
require 'pp'

module Inkthreadable
  class Order
    def self.count
      response = Inkthreadable::API::Request.get('orders/count.php', {})
      response['count']
    end

    def self.all(page = 1)
      response = Inkthreadable::API::Request.get('orders.php', {})
      response['orders']
    end

    def self.find(id)
      puts Inkthreadable::API::Request.get('order.php', params: {"id": id})
      response['order']
    end

    # readable - created_at, type, status, deleted
    # writeable - brand, billing_address, shipping_address, items, external_id
    def self.create(_props)
    end
  end
end
