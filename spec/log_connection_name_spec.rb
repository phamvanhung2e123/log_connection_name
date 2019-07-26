RSpec.describe LogConnectionName do
  before do
    @io = StringIO.new
    ActiveRecord::Base.logger = Logger.new @io
  end
  let(:connection_name)  { "Book"  }
  it "has a version number" do
    expect(LogConnectionName::VERSION).not_to be nil
  end

  it "Book exist" do
    Book.connection.connection_name = connection_name
    expect(Book.connection.connection_name).to eq connection_name
    expect(Book.count).to eq 0
    expect(@io.string).to match(/SELECT COUNT/)
  end
end
