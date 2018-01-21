require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :author => "Author",
        :ISBN => "Isbn",
        :Description => "Description",
        :Language => "Language",
        :cover_image => "Cover Image"
      ),
      Book.create!(
        :title => "Title",
        :author => "Author",
        :ISBN => "Isbn",
        :Description => "Description",
        :Language => "Language",
        :cover_image => "Cover Image"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Image".to_s, :count => 2
  end
end
