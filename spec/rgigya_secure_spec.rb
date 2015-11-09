require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/rgigya_shared_examples.rb')

describe "RGigyaSecure" do
  before :each do
    RGigya.config({
      :api_key => GIGYA_API_KEY,
      :api_secret => GIGYA_API_SECRET,
      :use_ssl => true,
      :domain => "us1",
      :timeout => 2
    })
    @protocol = "https"
    @method = "GET"
  end
  
  it "should pass the timeout config value to HTTParty" do
    HTTParty.should_receive(:get) do |url, options|
      options[:timeout].should == 2
      OpenStruct.new({
        body: JSON({errorCode: '0'})
      })
    end.and_call_original

    RGigya.socialize_getUserInfo({UID: "1", includeAllIdentities: true})
  end
  
  it_behaves_like RGigya
end
