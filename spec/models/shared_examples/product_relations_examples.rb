shared_examples_for 'a product relation' do
  its(:attributes) { should include('user_id') }
  its(:attributes) { should include('product_id') }
end