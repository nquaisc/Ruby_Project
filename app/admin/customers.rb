ActiveAdmin.register Customer do


permit_params :first_name, :last_name, :city, :province, :country, :postal_code, :email, :address

end
