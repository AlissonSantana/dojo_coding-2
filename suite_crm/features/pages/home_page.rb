class HomePage < SitePrism::Page

	element :create_list, :xpath, "//*[@id='quickcreatetop']/a"
	element :task_option, "a[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"

	def create (create,task)
		create_list.hover
		task_option.click
end
	end
