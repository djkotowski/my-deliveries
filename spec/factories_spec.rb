# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Factories" do
  it "are valid by default" do
    expect { FactoryBot.lint(traits: true) }.not_to raise_error
  end
end
