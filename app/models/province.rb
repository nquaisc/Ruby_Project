class Province < ApplicationRecord
    
    permit_params :name, :gst, :pst, :hst
    
end
