module BoxHelper
  def provide_category_name(id)
		if id.to_i == 0
			provide(:title, 'Suggestions')
		elsif id.to_i == 1
			provide(:title, 'Issues')
		end
	end
end
