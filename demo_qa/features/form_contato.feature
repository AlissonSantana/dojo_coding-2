#language: pt

	Funcionalidade: Formulário de Contato
		Eu como usuario do site
		Desejo enviar um formulario de contato
		Para entrar em contato com a empresa


			@efc
			Cenario: Enviar formulario de contato com sucesso
				Dado que eu esteja na home do site DemoQA
				Quando eu clico em 'Contact'
				E envio um formulario de contato com campo "joão", "j@ig.com", "outros", "blablablabla"
				Entao visualizo a mensagem "Your message was sent successfully. Thanks."


			@efcerro
			Esquema do Cenario: Enviar formulario de contato Inválido ('Your Email' preenchido incorretamente)
				Dado que eu esteja na home do site DemoQA
				Quando eu clico em 'Contact'
				E envio um formulario de contato com campo <Nome>, <Email>, <Assunto>, <MensagemTexto> e <Erro>
				Entao visualizo a mensagem de insucesso "Validation errors occurred. Please confirm the fields and submit it again."
				E a mensagem "<erro>" abaixo do campo correspondente

		Exemplos:
		|Nome  		|Email						        |Assunto		|MensagemTexto|Erro								            |
		|			    |	santana@inmetric.com.br	|	XPTO		  |	teste	      |Please fill the required field.|
		|Paulo	  |	alison.com				      |	automação	|	teste2      |Email address seems invalid.		|
		|Luis		  |							            |	automação	|	teste3      |Please fill the required field.|
