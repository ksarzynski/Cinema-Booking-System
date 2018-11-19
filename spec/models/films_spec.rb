require 'rails_helper'

RSpec.describe Film, :type => :model do
  subject {described_class.new(title: "Taxi Driver", director: "Martin Scorsese", release_year: 1976, image: File.basename(File.new(Rails.root.join("spec/support/poster.jpg"))))}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without director" do
    subject.director = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without release year" do
    subject.release_year = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with too long directors name" do
    subject.director = "Long name"*100
    expect(subject).to_not be_valid
  end

  it "is not valid with too short directors name" do
    subject.director = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with future release year" do
    subject.release_year = DateTime.now + 1.week
    expect(subject).to_not be_valid
  end

  it "is not valid with release year yearlier than first film ever" do
    subject.release_year = 1893
    expect(subject).to_not be_valid
  end
end
