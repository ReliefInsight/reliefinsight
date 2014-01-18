shared_examples_for 'a user' do
  its(:attributes) { should include('email') }
  its(:attributes) { should include('encrypted_password') }

  it { should have_and_belong_to_many(:roles) }

end