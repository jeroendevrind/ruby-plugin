describe Fastlane::Actions::JeroenAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The jeroen plugin is working!")

      Fastlane::Actions::JeroenAction.run(nil)
    end
  end
end
