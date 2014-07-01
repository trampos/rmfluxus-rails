# encoding: UTF-8

require 'spec_helper'
require 'rmfluxus_rails/layout_cli/dados_do_cliente_fornecedor'

module RmfluxusRails
  describe LayoutClienteFornecedor do
    it 'deve instanciar o tipo LayoutClienteFornecedor' do
      c = LayoutClienteFornecedor.new
      
      expect(c).to be_kind_of(LayoutClienteFornecedor)
    end
  end
  
  describe LayoutRmfluxus do

    let(:dummy_class) do
      
      Class.new do
        
        include(LayoutRmfluxus)
         
        attr_numerico :numerico,          
          :tamanho => 11
          
        attr_alfa :alfa,
          :tamanho => 12
          
        attr_valor_financeiro :valor_financeiro,
          :tamanho => 13
          
        attr_valor_financeiro :valor_financeiro_com_3_casas_decimais,
          :tamanho => 13, :casas_decimais => 3
          
        attr_data :data,
          :tamanho => 10
            
        attr_nao_utilizado :nao_utilizado,
          :tamanho => 15
      end
    end
    
    before(:each) do
      @layout = dummy_class.new
    end
    
    context "Atributo numérico" do
      
      it 'deve aceitar somente números' do
        expect { @layout.numerico = "Testando enviar string" }.to raise_error
        expect { @layout.numerico = 13 }.to_not raise_error
      end
    
      it 'deve completar o com zeros a esquerda' do
        @layout.numerico = 13
        expect(@layout.numerico).to eq("00000000013")
      end
      
      it 'se nulo completar com espaços' do
        @layout.numerico = nil
        expect(@layout.numerico).to eq("           ")
      end
    
    end
    
    context "Atributo alfa" do

      it 'deve completar o com espaços a direita' do
        @layout.alfa = "MARCEL"
        expect(@layout.alfa).to eq("MARCEL      ")
      end
      
      it 'deve aceitar número' do
        @layout.alfa = 1
        expect(@layout.alfa).to eq("1           ")
      end
      
      it 'deve aceitar boolean' do
        @layout.alfa = false
        expect(@layout.alfa).to eq("false       ")
      end
      
      it 'deve aceitar float' do
        @layout.alfa = 1.2
        expect(@layout.alfa).to eq("1.2         ")
      end
      
      it 'se nulo completar com espaços' do
        @layout.alfa = nil
        expect(@layout.alfa).to eq("            ")
      end
      
    end
    
    context "Atributo valor financeiro" do
      
      it 'não deve aceitar strings' do
        expect { @layout.valor_financeiro = "1.2" }.to raise_error
      end
      
      it 'deve completar o com zeros a esquerda (2 casas decimais default)' do
        @layout.valor_financeiro = 1.2
        expect(@layout.valor_financeiro).to eq("0000000001.20")
      end
      
      it 'deve aceitar inteiro e retornar 2 casas decimais' do
        @layout.valor_financeiro = 1
        expect(@layout.valor_financeiro).to eq("0000000001.00")
      end
      
      it 'deve retornar um numero com 3 casas decimais' do
        @layout.valor_financeiro_com_3_casas_decimais = 0.1
        expect(@layout.valor_financeiro_com_3_casas_decimais).to eq("000000000.100")
      end
      
      
      it 'se nulo completar com espaços' do
        @layout.valor_financeiro = nil
        expect(@layout.valor_financeiro).to eq("             ")
      end
      
    end
    
    context "Atributo data" do
      
      it 'deve aceitar data formato DD/MM/YYYY' do
        expect { @layout.data = '31/03/2008' }.to_not raise_error
        expect(@layout.data).to eq("31/03/2008")
      end
      
      it 'deve aceitar data no formato DDMMYYYY e completar com espaços a direita se não completar o campo' do
        expect { @layout.data = '31032008' }.to_not raise_error
        expect(@layout.data).to eq("31032008  ")
      end
      
      it 'no formato DD/MM/YYYY deve ser uma data válida' do
        expect { @layout.data = '32/03/2008' }.to raise_error
      end
      
      it 'no formato DDMMYYYY deve ser uma data válida' do
        expect { @layout.data = '32032008' }.to raise_error
      end
      
      it 'se for nulo completar com espaços' do
        expect(@layout.data).to eq("          ")
      end
      
    end
    
    context "Atributo não utilizado" do

      it 'completar com espaços' do
        expect(@layout.nao_utilizado).to eq("               ")
      end
      
      it 'não possui setter' do
        expect { @layout.nao_utilizado = 'qualquer valor' }.to raise_error
      end
      
    end
    
    context "Exportar" do

      it 'deve ler o template com o nome da classe' do
        allow(dummy_class).to receive(:name) { "Teste" } # Forçar o teste a ler o template teste
        expect(@layout.exportar).to eq("TESTE OK")
      end
    end
  end
end

