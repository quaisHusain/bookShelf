require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :author => "MyString",
      :ISBN => "MyString",
      :Description => "MyString",
      :Language => "MyString",
      :cover_image => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[ISBN]"

      assert_select "input[name=?]", "book[Description]"

      assert_select "input[name=?]", "book[Language]"

      assert_select "input[name=?]", "book[cover_image]"
    end
  end
end
