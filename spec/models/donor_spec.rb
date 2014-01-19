require 'spec_helper'

describe Donor do
  it_behaves_like 'a user'

  it { should have_many(:donor_product_relations) }
  it { should have_many(:products).through(:donor_product_relations) }

  describe "after create" do
    it "has a donor role" do
      donor = Donor.new
      donor.email = "donor@donor.com"
      donor.password = "secretpassword"
      donor.password_confirmation = "secretpassword"
      donor.save
      donor.roles.map(&:name).should include("donor")
    end
  end

end