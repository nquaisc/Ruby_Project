ActiveAdmin.register Order do


    permit_params :status, :total_amount, :customer_id

end
