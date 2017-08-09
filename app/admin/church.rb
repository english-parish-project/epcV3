ActiveAdmin.register Church do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :town, :county, :buildings_of_england_volume, :diocese, :archdeaconry, :latitude, :longitude, :minster_current_status, :collegiate_status, :collegiate_date, :first_mentioned_in_text, :first_mentioned_in_text_explanation, :earliest_extant_fabric_date, :earliest_extant_fabric_date_evidence, :earliest_extant_fabric_date_secured, :earliest_extant_fabric_location, :notes


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
