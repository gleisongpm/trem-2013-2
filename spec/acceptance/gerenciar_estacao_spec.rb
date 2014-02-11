# coding: utf-8

require 'spec_helper'

feature 'gerenciar Estacao' do

  scenario 'incluir Estacao', :javascript => true  do

    visit new_estacao_path

    preencher_e_verificar_estacao
 

  end

  scenario 'alterar Estacao' do #, :js => true  do

    estacao = FactoryGirl.create(:estacao)

    visit edit_estacao_path(estacao)

    preencher_e_verificar_estacao



  end

   scenario 'excluir Estacao' do #, :javascript => true  do

       estacao = FactoryGirl.create(:estacao)

        visit estacaos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_estacao


      fill_in 'Nome', :with => "Leopoldina"
      
 
      click_button 'Salvar'

      page.should have_content 'Nome: Leopoldina'
      
   end
end
