# frozen_string_literal: true

class StubWithUUID < FactoryBot::Strategy::Stub
  protected

  def next_id
    SecureRandom.uuid
  end
end

FactoryBot.register_strategy(:build_stubbed, StubWithUUID)

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
