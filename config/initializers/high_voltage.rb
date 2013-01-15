# Be sure to restart your server when you modify this file.
#
begin
	HighVoltage.content_path = "guides/"
rescue
	puts "WARNING: HighVoltage configuration failed: #{$!}"
end
