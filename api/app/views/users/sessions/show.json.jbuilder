if user_signed_in?
	json.user do
		json.(current_user, :id, :email)
	end
end

json.rules Ability.new(current_user).to_list
