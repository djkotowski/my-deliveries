# frozen_string_literal: true

require_relative "seed_helpers"

include SeedHelpers

say_with_time "Creating users" do
  User.find_or_create_by!(username: "dan") do |user|
    user.email = "dan@dankotowski.dev"
    user.password = "password"
  end
end
