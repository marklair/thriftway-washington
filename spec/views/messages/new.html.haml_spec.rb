require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :company => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_name", :name => "message[name]"
      assert_select "input#message_email", :name => "message[email]"
      assert_select "input#message_phone", :name => "message[phone]"
      assert_select "input#message_company", :name => "message[company]"
      assert_select "textarea#message_content", :name => "message[content]"
    end
  end
end
