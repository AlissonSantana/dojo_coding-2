Dado(/^que eu esteja na home do site DemoQA$/) do
	PageHome.new.load
end

Quando(/^eu clico em 'Contact'$/) do
	PageHome.new.contato.click
end

Quando(/^envio um formulario de contato preenchido$/) do
	@formulario = PageFormulario.new
	@formulario.prencher_formulario('Paulo','paulo2017@gmail.com','teste','teste01')
	@formulario.enter.click
end

Entao(/^visualizo a mensagem "([^"]*)"$/) do |mensagem_sucesso|
	expect(PageFormulario.new.mensagem_sucesso.text).to eq(mensagem_sucesso)
end
