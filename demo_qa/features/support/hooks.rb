Before do
#O q ue irá acontecer antes da execução do cenário
end


AfterStep do
#O q ue irá acontecer depois de algum passo da execução do cenário
end


After('	@efc') do |assunto|
#O q ue irá acontecer depois da execução do cenário
	Timeout.timeout(5)do
	block.call
end

end
