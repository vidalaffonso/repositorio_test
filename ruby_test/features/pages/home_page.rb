class HomePage < SitePrism::Page
    set_url '/'
    element :pesquisa, '#search_query_top'
    element :btn_pesquisa, '.btn.btn-default.button-search'
    
    def busca_produto
      pesquisa.set "Blouse"
      btn_pesquisa.click  
    end
end
