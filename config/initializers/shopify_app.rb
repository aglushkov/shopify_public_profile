ShopifyApp.configure do |config|
  config.api_key = SECRETS.shopify_api_key
  config.secret = SECRETS.shopify_api_secret
  config.scope = 'read_orders, read_products'
  config.embedded_app = true
end
