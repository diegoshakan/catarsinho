Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUD_NAME']
  config.api_key = ENV['API_KEY']
  config.api_secret = ENV['API_SECRET']
  config.secure = ENV['ENHANCE_IMAGE_TAG']
  config.cdn_subdomain = true
end
