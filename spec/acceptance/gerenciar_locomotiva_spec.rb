# coding: utf-8

require 'spec_helper'

feature 'gerenciar Locomotiva' do

  scenario 'incluir Locomotiva', :javascript => true  do

    visit new_locomotiva_path

    preencher_e_verificar_locomotiva
 

  end

  scenario 'alterar Locomotiva' do #, :js => true  do

    locomotiva = FactoryGirl.create(:locomotiva)

    visit edit_locomotiva_path(locomotiva)

    preencher_e_verificar_locomotiva



  end

   scenario 'excluir Locomotiva' do #, :javascript => true  do

       locomotiva = FactoryGirl.create(:locomotiva)

        visit locomotivas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_locomotiva


      fill_in 'Nome', :with => "fca"
      fill_in 'Modelo', :with => "zt 800"
      
 
      click_button 'Salvar'

      page.should have_content 'Nome: fca'
      page.should have_content 'Modelo: zt 800'
      
   end
end
