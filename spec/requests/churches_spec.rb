require 'rails_helper'

RSpec.describe "Churches", type: :request do
  describe "GET /churches" do
    it "returns all churches" do
      create_list(:church, 10)
      get churches_path
      
      expect(response).to have_http_status(200)
      expect(json.size).to eq(10)
    end
  end
  
  describe "GET /church" do
    it 'retrieves a specific church' do
      church = create(:church) 
      get church_path(church.id)
      expect(response).to be_success

      expect(json.except('created_at', 'updated_at')).to eq(church.attributes.except('created_at', 'updated_at')) 
    end
  end
  
  describe "POST /church" do
    it 'creates a church' do 
      post churches_path, params: {church: attributes_for(:church)}
    
      expect(response).to have_http_status(:created)
      expect(Church.find(json["id"])).to be_truthy
    end
  end
end
