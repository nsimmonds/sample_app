require 'spec_helper'
require 'minitest/reporters'
MiniTest::Reporters.use!

describe "UserPages" do
  subject { page }

  describe "Signup" do
    before { visit signup_path }

    it "should have the h1 header 'Signup'" do
      should {have_selector 'h1', text: "Sign up"}
      should {have_selector 'title', text: full_title('Sign up')}
    end
  end
end
