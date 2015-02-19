class Arrival < ActiveRecord::Base
	enum status: [ :on_time, :delayed, :landing, :landed ]
end
