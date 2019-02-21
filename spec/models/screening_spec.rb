require 'rails_helper'

RSpec.describe Screening, :type => :model do
  subject { described_class.new }
  let(:film) {create(:film)}
  let(:customer) {create(:customer)}

  it { should belong_to(:film) }
  it { should belong_to(:customer) }

  it "is valid with valid attributes" do
   subject.film_id = film.id
   subject.customer_id = customer.id
   subject.screeningdate = "2020-02-03T04:05:06+00:00"
   subject.price = 12
   expect(subject).to be_valid
end

it "is not valid with date from the past" do
 subject.film_id = film.id
 subject.customer_id = customer.id
 subject.screeningdate = "2000-02-03T04:05:06+00:00"
 subject.price = 12
 expect(subject).to_not be_valid
end

it "is not valid with negative price number" do
 subject.film_id = film.id
 subject.customer_id = customer.id
 subject.screeningdate = "2000-02-03T04:05:06+00:00"
 subject.price = -4
 expect(subject).to_not be_valid
end
end
