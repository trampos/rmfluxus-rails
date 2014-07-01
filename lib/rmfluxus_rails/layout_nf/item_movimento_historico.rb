require "rmfluxus_rails/layout_rmfluxus.rb"

# Tabela de Intens de Movimentos

module RmfluxusRails
  module LayoutNF
    class ItemMovimentoHistorico
      
      include LayoutRmfluxus

      attr_alfa :historicocurto, :tamanho => 255 # Descr. Curta de HistÛrico

      # attr_alfa :, :tamanho => 
      # attr_valor_financeiro :, :tamanho =>
      # attr_numerico :, :tamanho => 
      # attr_data :, :tamanho => 
      # attr_nao_utilizado :, :tamanho => 
    end
  end
end