require 'rails_helper'

RSpec.describe Customer, :type => :model do
  subject {described_class.new(firstname: "Jan", secondname: "Kowalski", email: "jan@kowalski.pl")}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.firstname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without second name" do
    subject.secondname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with too short first name" do
    subject.firstname = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with too short second name" do
    subject.secondname = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with too long first name" do
    subject.firstname = "a"*31
    expect(subject).to_not be_valid
  end

  it "is not valid with too long second name" do
    subject.secondname = "a"*31
    expect(subject).to_not be_valid
  end

  it "is not valid with wrong email" do
    subject.email = "tomasznowak.pl"
    expect(subject).to_not be_valid
  end


end
