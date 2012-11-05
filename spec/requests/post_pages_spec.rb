require 'spec_helper'

describe "post pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }

  before { sign_in user }

end
