module OrdersHelper
  def generate_secure_random_uuid 
    SecureRandom.uuid
  end
end
