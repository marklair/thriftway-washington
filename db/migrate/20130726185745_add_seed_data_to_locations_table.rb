class AddSeedDataToLocationsTable < ActiveRecord::Migration
  def self.up
    Location.create(
        [
            {:storenumber => '354', :unified => '40354', :storename => 'MATTHEW\'S THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://matthewsatlakemont.com/', :address => '4989 LAKEMONT BOULEVARD SE', :city => 'BELLEVUE', :state => 'WA', :zip => '98006', :phone => '4256532261', :sort => '1'},
            {:storenumber => '229', :unified => '40229', :storename => 'FORKS OUTFITTERS', :adgroup => 'THRIFTWAY', :url => 'http://www.forksthriftway.com/', :address => '950 SOUTH FORKS AVENUE', :city => 'FORKS', :state => 'WA', :zip => '98331', :phone => '3603746161', :sort => '2'},
            {:storenumber => '385', :unified => '40385', :storename => 'PAYLESS FOODS', :adgroup => 'THRIFTWAY', :url => 'http://www.paylessfoodstore.com/aboutus.html', :address => '1609 EAST MAIN', :city => 'FREELAND', :state => 'WA', :zip => '98249', :phone => '3603314810', :sort => '3'},
            {:storenumber => '677', :unified => '40677', :storename => 'PICK RITE THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'https://pick-rite.accelitec.com/Default.aspx?ReturnUrl=%2fLogin.aspx', :address => '211 PIONEER AVENUE EAST', :city => 'MONTESANO', :state => 'WA', :zip => '98563', :phone => '3602493420', :sort => '4'},
            {:storenumber => '722', :unified => '40722', :storename => 'BAYVIEW THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://www.bayviewthriftway.com/', :address => '516 WEST 4TH STREET', :city => 'OLYMPIA', :state => 'WA', :zip => '98502', :phone => '3603524897', :sort => '5'},
            {:storenumber => '664', :unified => '40664', :storename => 'RALPH\'S THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://www.ralphsthriftway.com/', :address => '1908 EAST 4TH', :city => 'OLYMPIA', :state => 'WA', :zip => '98506', :phone => '3603578011', :sort => '6'},
            {:storenumber => '109', :unified => '40109', :storename => 'BOULEVARD PARK THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://boulevardparkthriftway.com/', :address => '12000 DES MOINES WAY SOUTH', :city => 'SEATTLE', :state => 'WA', :zip => '98168', :phone => '2062465697', :sort => '7'},
            {:storenumber => '603', :unified => '40603', :storename => 'WEST SEATTLE THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://www.westseattlethriftway.com/', :address => '4201 SW MORGAN', :city => 'SEATTLE', :state => 'WA', :zip => '98136', :phone => '2069370245', :sort => '8'},
            {:storenumber => '193', :unified => '40193', :storename => 'VILLAGE MARKET', :adgroup => 'THRIFTWAY', :url => 'mythriftway.net-domain expired', :address => '20150 BALLINGER WAY NE', :city => 'SHORELINE', :state => 'WA', :zip => '98155', :phone => '2063687221', :sort => '9'},
            {:storenumber => '251', :unified => '40251', :storename => 'SEAMART', :adgroup => 'AK THRIFTWAY', :url => 'http://www.seamart.com/', :address => '1867 HALIBUT POINT ROAD', :city => 'SITKA', :state => 'WA', :zip => '99835', :phone => '9077476266', :sort => '10'},
            {:storenumber => '329', :unified => '40329', :storename => 'STADIUM THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://stadiumthriftway.com/', :address => '618 NORTH 1ST', :city => 'TACOMA', :state => 'WA', :zip => '98403', :phone => '2536278275', :sort => '11'},
            {:storenumber => '322', :unified => '40322', :storename => 'VASHON THRIFTWAY', :adgroup => 'THRIFTWAY', :url => 'http://vashonthriftway.com/', :address => '9740 SW BANK ROAD', :city => 'VASHON', :state => 'WA', :zip => '98070', :phone => '2064632100', :sort => '12'},
        ]
    )
  end
  def self.down
    Location.destroy_all
  end
end
