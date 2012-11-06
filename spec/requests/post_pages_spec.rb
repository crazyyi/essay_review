require 'spec_helper'

describe "post pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }

  before { sign_in user }

  describe "create new post" do
    before { visit newpost_path }

    describe "with invalid information" do
      it "should not create a post" do
        expect { click_button "Create Post" }.not_to change(post, :count)
      end

      describe "error messages" do
        before { click_button "Create Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before { fill_in 'post_title', with: "Some title" }
      before { fill_in 'post_content', with: "Lorem ipsum" }
      it "should create a post" do
        expect { click_button "Create Post" }.to change(Post, :count).by(1)
      end
    end

    describe "new post page" do
      it { should have_selector('h1', text: 'Compose a new essay') }
      it { should have_button('Create Post') }
    end
  end
end
