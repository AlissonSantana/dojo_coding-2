#language: pt
#uncode UTF-8


Funcionalidade: SuíteCRM
		Eu como usuário do SuíteCRM
		Quero utilizar as funcionalidades do website
		Para gerenciar o relacionamento com os meus clientes.

Contexto: Usuário já esteja logado no website CRM e selecionado CREATE
			Dado que esteja logado website SuíteCRM
			Quando selecionar a funcionalidade 'CREATE'
			E selecionar a opção 'Create Task'

			@CT
		Cenário: Cadastrar Task
			Quando preencher os campos necessários
			E clicar em 'Save'
			Então o task será cadastrada

			@ET
	Cenário: Editar Task
			Quando clicar no botão 'Task View'
			E clicar no botão para editar
			E realizar uma alteração
			E salvar a mudança
			Então o cadastro será editado

			@DT
	Cenário: Deletar Task
			Quando marcar no checkbox da task desejada
			E clicar no botão 'Bulk Action'
			Quando selecionar a opção Delete
			E confirmar a exclusão
			Então o cadastro será deletado