RSpec.describe LogConnectionName do
  it "has a version number" do
    expect(LogConnectionName::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "Book exist" do
    expect(Book.count).to eq 0
  end
end
