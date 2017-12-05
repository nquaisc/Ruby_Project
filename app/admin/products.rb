ActiveAdmin.register Product do


    permit_params :name, :description, :price, :stock_quantity, :category_id, :prodimage, prodimage_attributes: [:_destroy]

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category_id
      f.input :prodimage, as: :file
     if f.object.prodimage.present?
       f.semantic_fields_for :prodimage_attributes do |prodimage_fields|
         prodimage_fields.input :_destroy, as: :boolean, label: 'Delete?'
       end
     end
    end
    f.actions
  end

end
