#@Contexto

Dado(/^que esteja logado website SuíteCRM$/) do
  @Login = LoginPage.new
  @Login.load
  @Login.username_field.set('will')
  @Login.password_field.set('will')
  @Login.login_button.click
end
  
Quando(/^selecionar a funcionalidade 'CREATE'$/) do
  @Home = HomePage.new
  @Home.create_list.hover
end

Quando(/^selecionar a opção 'Create Task'$/) do
  @Home = HomePage.new
  @Home.task_option.click
end


#@CT

Quando(/^preencher os campos necessários$/) do
@Cadastro = CadastroPage.new
@Cadastro.preencher_cadastro("Vale Transporte","Meu VT não chegou","Ligia Longo")
end

Quando(/^clicar em 'Save'$/) do
  @Cadastro.clicar
end

Então(/^o task será cadastrada$/) do
expect(@Cadastro.validar_title.text.downcase).to eq(@Cadastro.validar_subject.text.downcase)
end

#@ET

Quando(/^clicar no botão 'Task View'$/) do
@Editar = EditarPage.new
@Editar.clicar

end

Quando(/^clicar no botão para editar$/) do
  @Editar.clicar_button
end

Quando(/^realizar uma alteração$/) do
  @Editar.contactName.set('Lucas')

end

Quando(/^salvar a mudança$/) do
@Editar.save
end

Então(/^o cadastro será editado$/) do
expect(@Editar.validarTitulo.text.downcase).to eq(@Editar.validarAssunto.text.downcase)
end

#@DT

Quando(/^marcar no checkbox da task desejada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^clicar no botão 'Bulk Action'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^selecionar a opção Delete$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^confirmar a exclusão$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^o cadastro será deletado$/) do
  pending # Write code here that turns the phrase above into concrete actions


end