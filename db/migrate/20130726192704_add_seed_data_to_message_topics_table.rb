class AddSeedDataToMessageTopicsTable < ActiveRecord::Migration
  def self.up
    MessageTopic.create(
        [
            {:name => 'Suggest a Location', :forwarding_address => ''},
            {:name => 'Become a Vendor Partner', :forwarding_address => ''},
            {:name => 'Join the Thriftway Team', :forwarding_address => ''},
            {:name => 'Submit a Media Inquiry', :forwarding_address => ''},
            {:name => 'Share Comments & Suggestions', :forwarding_address => ''}
        ]
    )
  end
  def self.down
    MessageTopic.destroy_all
  end
end
