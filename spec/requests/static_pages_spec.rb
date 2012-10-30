require 'spec_helper'
require 'minitest/reporters'
MiniTest::Reporters.use!

describe "Static pages" do

  subject { page }

  shared_examples_for "all these" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title))   }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) {'Sample App'}
    let(:page_title) {''}

    it_should_behave_like "all these"
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading) {'Help'}
    let(:page_title) {'Help'}
    it_should_behave_like "all these"

  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
end