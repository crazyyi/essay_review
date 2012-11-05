require 'spec_helper'

describe "post pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }

  before { sign_in user }

  describe "create new post" do
    describe "with invalid information" do
    
    end

    describe "with valid information" do
    end

    describe "new post page" do
      before { visit newpost_path }
      it { should have_selector('h1', text: 'Compose a new essay') }
    end
  end
end
