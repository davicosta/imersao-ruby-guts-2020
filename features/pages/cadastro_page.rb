class CadastroPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account'

    element :email_create_account_field, '#email_create'
    element :create_account_btn, '#SubmitCreate'
    element :title_feminino_radio, '#id_gender2'
    element :first_name_field, '#customer_firstname'
    element :last_name_field, '#customer_lastname'
    element :password_field, '#passwd'
    element :day_select, '#uniform-days'
    elements :day_options, '#uniform-days option'
    element :month_select, '#uniform-months'
    elements :month_options, '#uniform-months option'
    element :year_select, '#uniform-years'
    elements :year_options, '#uniform-years option'
    element :newsletter_checkbox, '#uniform-newsletter'
    element :address_field, '#address1'
    element :city_field, '#city'
    element :state_select, '#uniform-id_state'
    elements :state_options, '#uniform-id_state option'
    element :zipcode_field, '#postcode'
    element :mobile_phone_field, '#phone_mobile'
    element :address_alias_field, '#alias'
    element :register_btn, '#submitAccount'

    def iniciar_criacao_conta(email)
        email_create_account_field.set email
        create_account_btn.click
    end

    def preencher_form_com_dados_fixos
        title_feminino_radio.set true
        first_name_field.set 'TesteNnn'
        last_name_field.set 'Costattt'
        password_field.set '123654'
        day_select.click
        day_option = day_options.find {|option| option.text.include?("2")}
        day_option.click
        month_select.click
        month_option = month_options.find {|option| option.text.include?("September")}
        month_option.click
        year_select.click
        year_option = year_options.find {|option| option.text.include?("1990")}
        year_option.click
        newsletter_checkbox.click
        address_field.set 'Rua BBB, 15'
        city_field.set 'Porto Alegre'
        state_select.click
        option = state_options.find {|option| option.text.include?("Iowa")}
        option.click
        zipcode_field.set '54612'
        mobile_phone_field.set '5551985425998'
        address_alias_field.set 'casa'
    end

    def confirmar_cadastro
        register_btn.click
    end
end