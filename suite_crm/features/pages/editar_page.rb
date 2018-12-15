class EditarPage < SitePrism::Page

	element :viewTask, "a[href='index.php?module=Tasks&action=index&return_module=Tasks&return_action=DetailView']"
	elements :botao_edit, "a[class='edit-link']"
	element :contactName, "input[id='contact_name']"
	elements :saveButton, '#SAVE'
	element :validarTitulo, ".module-title-text"
	element :validarAssunto, "#name"

	def clicar
		viewTask.click	
	end

	def clicar_button
		botao_edit[0].click
		end

	def inserir_edicao (contact)
		contactName.set(contact)		
		end

		def save
		saveButton.first.click
		end
	end
