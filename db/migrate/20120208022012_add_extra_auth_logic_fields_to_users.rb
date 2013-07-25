class AddExtraAuthLogicFieldsToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string    :single_access_token, :null => false                # optional, see Authlogic::Session::Params
      t.string    :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability
      # Magic columns, just like ActiveRecord's created_at and updated_at. These are automatically maintained by Authlogic if they are present.
      t.integer   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.integer   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
      t.datetime  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
      t.string    :current_login_ip                                   # optional, see Authlogic::Session::MagicColumns
      t.string    :last_login_ip                                      # optional, see Authlogic::Session::MagicColumns
    end
    
    add_index :users, :perishable_token
    add_index :users, :email
    add_index :users, :username
    add_index :users, :persistence_token 
  end

  def self.down
    change_table :users do |t|
      t.remove    :single_access_token, :null => false                # optional, see Authlogic::Session::Params
      t.remove    :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability
      # Magic columns, just like ActiveRecord's created_at and updated_at. These are automatically maintained by Authlogic if they are present.
      t.remove   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.remove   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.remove  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
      t.remove  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
      t.remove  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
      t.remove    :current_login_ip                                   # optional, see Authlogic::Session::MagicColumns
      t.remove    :last_login_ip
    end
    remove_index :users, :email
    remove_index :users, :username
    remove_index :users, :persistence_token 
  end
end