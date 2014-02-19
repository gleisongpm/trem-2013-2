# coding: utf-8
require 'spec_helper'

feature 'gerenciar parada' do

  scenario 'incluir parada' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => "YYY") 
    estacao = FactoryGirl.create(:estacao, :nome => 'XXX')

    visit new_parada_path

    preencher_e_verificar_parada
   

  end

  scenario 'alterar parada' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => "YYY") 
    estacao = FactoryGirl.create(:estacao, :nome => 'XXX')

    parada = FactoryGirl.create(:parada,:linha => linha,:estacao => estacao)

    visit edit_parada_path(parada)

    preencher_e_verificar_parada


  end

  scenario 'excluir trem linha' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => "YYY") 
    estacao = FactoryGirl.create(:estacao, :nome => 'XXX')

    parada = FactoryGirl.create(:parada,:linha => linha,:estacao => estacao)

    visit paradas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_parada

    select 'YYY', :from => 'Linha'
    select 'XXX', :from => 'Estação'

    fill_in 'Ordem', :with => 'tres'

    click_button 'Salvar'
    
    page.should have_content 'Linha: YYY'
    page.should have_content 'Estação: XXX'
    page.should have_content 'Ordem: tres'
    
  end

end
