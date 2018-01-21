require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :author => "Author",
      :ISBN => "Isbn",
      :Description => "Description",
      :Language => "Language",
      :cover_image => "Cover Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Cover Image/)
  end
end
