class Home < SitePrism::Page
  set_url '/Catalogo/Catalogo/Produtos'

  element :campo_texto, '#txttermo'
  elements :texto_prod, '.desc'

  def buscar_produto
    campo_texto.set 'Creme Regenerador de Romã'

    wait_for_texto_prod

    #clica no primeiro elemento do array de elementos
    texto_prod[0].click

   # usamos um metodo criado no hooks e estamos usando ele na pageobjects
   # buscar_por_texto_e_clicar('.desc', 'Creme Regenerador de Romã para as Mãos Weleda - Creme para as Mãos - 50ml')

   #varre todos os elementos e printa cada elemento na tela
   #texto_prod.each do |vai|
   #    puts vai.text
   #end

   # puts 'segundo teste'
   # puts texto_prod[2].text
  end

  # comando do vscode 
  # control + alt + seta =  seleciona varias linhas

  # comandos possiveis para ficar no lugar do wait_for_elemento

  #has_elemento? - verifica se tem o elemento
  #has_no_elemento? verifica que nao tem o elemento ma tela
  #wait_until_elemento_visible - espera se o elemento esta visivel
  #wait_until_elemento_invisible - espera se o elemento esta invisivel
end