class LoginPage < SitePrism::Page
	
	set_url "https://demo.suiteondemand.com/index.php"

	element :username_field, "input[placeholder='Username']"
	element :password_field, "input[placeholder='Password']"
	element :login_button, "input[title='Log In']"

	def login (nome,senha,login)
		username_field.set(nome)
		password_field.set(senha)
		login_button.click(login)
	end

end