class SearchStore < SitePrism::Page
    element :produto, '#center_column img'
    element :email, '#email_create'
    element :title, '#id_gender1'
    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    element :password, '#passwd'
 
   
    def seleciona_produto
        produto.click 
        #click_button "Add to cart"
        find('button', text: "Add to cart" ).click
        find('span', text: "Proceed to checkout" ).click
        
        
    end

    def  checkout
        find('span', text: "Proceed to checkout" ).click
    end

    def criar_usuario
        email.set "vidalteste@teste.com"
        find('button', text: "Create an account" ).click
        title.click
        first_name.set "Vidal"
        last_name.set "Affonso"
        password.set "150287"
        find('#days', visible: false).first(:option, '1').select_option
        find('#months', visible: false).send_keys('May')
        find('#years', visible: false).first(:option, '1980').select_option
    end
end