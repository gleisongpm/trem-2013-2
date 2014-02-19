# coding: utf-8
require 'spec_helper'

feature 'gerenciar locomotiva linha parada' do

  scenario 'incluir locomotiva linha parada' do #, :javascript => true  do

    tremlinha = FactoryGirl.create(:tremlinha, :destino => "YYY") 
    parada = FactoryGirl.create(:parada, :ordem => 'XXX')

    visit new_locomotivalinhaparada_path

    preencher_e_verificar_locomotiva_linha_parada
   

  end

  scenario 'alterar locomotiva linha parada' do #, :javascript => true  do

    tremlinha = FactoryGirl.create(:tremlinha, :destino => "YYY") 
    parada = FactoryGirl.create(:parada, :ordem => 'XXX')

    locomotivalinhaparada = FactoryGirl.create(:locomotivalinhaparada,:tremlinha => tremlinha,:parada => parada)

    visit edit_locomotivalinhaparada_path(locomotivalinhaparada)

    preencher_e_verificar_locomotiva_linha_parada


  end

  scenario 'excluir locomotiva linha parada' do #, :javascript => true  do

    tremlinha = FactoryGirl.create(:tremlinha, :destino => "YYY") 
    parada = FactoryGirl.create(:parada, :ordem => 'XXX')

    locomotivalinhaparada = FactoryGirl.create(:locomotivalinhaparada,:tremlinha => tremlinha,:parada => parada)

    visit locomotivalinhaparadas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_locomotiva_linha_parada

    select 'YYY', :from => 'Tremlinha'
    select 'XXX', :from => 'Parada'

    fill_in 'Hora Chegada', :with => 'antes'
    fill_in 'Hora Partida', :with => 'depois'
    
    click_button 'Salvar'
    
    page.should have_content 'Tremlinha: YYY'
    page.should have_content 'Parada: XXX'
    page.should have_content 'Hora Chegada: antes'
    page.should have_content 'Hora Partida: depois'
    
    
  end

      

end
