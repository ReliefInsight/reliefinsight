require 'spec_helper'

describe Requester do
  it_behaves_like 'a user'

  it { should have_many(:requester_product_relations) }
  it { should have_many(:products).through(:requester_product_relations) }

  describe "after create" do
    it "has a donor role" do
      requester = Requester.new
      requester.email = "donor@donor.com"
      requester.password = "secretpassword"
      requester.password_confirmation = "secretpassword"
      requester.save
      requester.roles.map(&:name).should include("requester")
    end
  end

end