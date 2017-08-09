require 'rails_helper'

RSpec.describe Church, type: :model do
  it { should validate_presence_of(:name) }
end
