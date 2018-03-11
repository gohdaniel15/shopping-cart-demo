require 'rails_helper'

RSpec.describe GetApiService, type: :service do

  describe '.call' do

    it { expect(described_class.call['type']).to eq('success') }
    it { expect(described_class.call).to be_a(Hash) }

  end

end
