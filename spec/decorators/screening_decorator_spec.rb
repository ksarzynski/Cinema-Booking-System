require 'rails_helper'

RSpec.describe ScreeningDecorator do
  let(:screening) { FactoryBot.build_stubbed(:screening).decorate }

  it 'returns proper screening date' do
    expect(screening.screeningdate).to eq('2019-02-03 05:05')
  end
end
