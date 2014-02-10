# coding: utf-8

require 'spec_helper'

feature 'gerenciar Linha' do

  scenario 'incluir Linha', :javascript => true  do

    visit new_linha_path

    preencher_e_verificar_linha
 

  end

  scenario 'alterar Linha' do #, :js => true  do

    linha = FactoryGirl.create(:linha)

    visit edit_linha_path(linha)

    preencher_e_verificar_linha



  end

   scenario 'excluir Linha' do #, :javascript => true  do

       linha = FactoryGirl.create(:linha)

        visit linhas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_linha


      fill_in 'Nome', :with => "via litoral"
      
 
      click_button 'Salvar'

      page.should have_content 'Nome: via litoral'
      
   end
end
