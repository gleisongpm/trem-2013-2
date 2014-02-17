# coding: utf-8
require 'spec_helper'

feature 'gerenciar trem_linha' do

  scenario 'incluir trem_linha' do #, :javascript => true  do

    locomotiva = FactoryGirl.create(:locomotiva, :nome => "YYY") 
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    visit new_tremlinha_path

    preencher_e_verificar_trem_linha
   

  end

  scenario 'alterar trem_linha' do #, :javascript => true  do

    locomotiva = FactoryGirl.create(:locomotiva, :nome => "YYY") 
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    tremlinha = FactoryGirl.create(:tremlinha,:locomotiva => locomotiva,:linha => linha)

    visit edit_tremlinha_path(tremlinha)

    preencher_e_verificar_trem_linha


  end

  scenario 'excluir trem linha' do #, :javascript => true  do

    locomotiva = FactoryGirl.create(:locomotiva, :nome => "YYY") 
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    tremlinha = FactoryGirl.create(:tremlinha, :locomotiva => locomotiva, :linha => linha)

    visit tremlinhas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_trem_linha

    select 'YYY', :from => 'Locomotiva'
    select 'XXX', :from => 'Linha'

    fill_in 'Destino', :with => 'Campos'
    
    click_button 'Salvar'
    
    page.should have_content 'Locomotiva: YYY'
    page.should have_content 'Linha: XXX'
    page.should have_content 'Destino: Campos'
    
  end

end
