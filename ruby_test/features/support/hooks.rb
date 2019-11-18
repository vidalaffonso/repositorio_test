
# hooks tudo que tem que fazer antes e depois de rodar o cenário
#Tira screenshot da pagina
After do |scenario|
    scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')
  
    if scenario.failed?
      # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
      tirar_foto(scenario_name.downcase!, 'falhou')
    else
      # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
      tirar_foto(scenario_name.downcase!, 'passou')
    end
  end