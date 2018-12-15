Quando(/^envio um formulario de contato com campo "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |nome, email, assunto, mensagemTexto|
	PageFormulario.new.prencher_formulario(nome, email, assunto, mensagemTexto)
	PageFormulario.new.enter.click
end

Entao(/^visualizo a mensagem de insucesso "([^"]*)"$/) do |mensagem_insucesso|
expect(PageFormulario.new.mensagem_insucesso.text).to eq(mensagem_insucesso)
end

Entao(/^a mensagem "([^"]*)" abaixo do campo correspondente$/) do |texto_invalido|
 	expect(PageFormulario.new.texto_invalido.text).to eq(texto_invalido)
end

#@EnviarformulariodecontatoInválido_Email














Quando(/^envio um formulario de contato com campo , santana@inmetric\.com\.br, XPTO, teste e Please fill the required field\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^envio um formulario de contato com campo Paulo, alison\.com, automação, teste(\d+) e Email address seems invalid\.$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^envio um formulario de contato com campo Luis, , automação, teste(\d+) e Please fill the required field\.$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
