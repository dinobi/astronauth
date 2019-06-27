RSpec.describe Astronauth do

  let!(:welcome_note) { Astronauth.welcome }

  describe '.welcome' do
    context 'When module method .welcome is called' do
      it 'returns a welcome message' do
        expect(welcome_note).to eql 'Welcome to Astronauth 👨🏾‍🚀'
      end
    end
  end
end
