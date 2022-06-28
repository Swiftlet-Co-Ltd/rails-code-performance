require 'rails_helper'

RSpec.describe "Tests", type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:profile) { FactoryBot.create(:profile) }
  let!(:car) { FactoryBot.create_list(:car, 10, user: user) }

  describe "GET /code1" do
    it "should return car value successfully" do
      get "/tests/code1"

      expect(response.status).to eq(200)
      res = JSON.parse(response.body)
    end
  end

  describe "GET /code2" do
    it "should return car value successfully" do
      get "/tests/code2"

      expect(response.status).to eq(200)
      res = JSON.parse(response.body)
    end
  end
end
