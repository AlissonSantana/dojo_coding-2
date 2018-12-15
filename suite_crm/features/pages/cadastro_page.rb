class CadastroPage < SitePrism::Page

	element :subject_field, "#name"
	element :description_field, "#description"
	element :assignedto_field, "#assigned_user_name"
	element :comboBoxStatus, :xpath, "//select[@id = 'status']"
	elements :criarTarefaBotao, '#SAVE'
	element :validar_title, ".module-title-text"
	element :validar_subject, "#name"
	
	def preencher_cadastro (subject,description,assignedto)
		subject_field.set(subject)
		description_field.set(description)
		assignedto_field.set(assignedto)
		comboBoxStatus.find(:xpath, "//option[text() = 'In Progress']").click
end

	def clicar
		criarTarefaBotao.first.click
	end

end