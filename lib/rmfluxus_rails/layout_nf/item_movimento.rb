require "rmfluxus_rails/layout_rmfluxus.rb"

# Tabela de Intens de Movimentos

module RmfluxusRails
  module LayoutNF
    class ItemMovimento
      
      include LayoutRmfluxus
     
      attr_alfa                :codigoprd,              :tamanho => 30     #   
      attr_numerico            :numerosequencial,       :tamanho => 5      # N˙mero Sequencial 
      attr_alfa                :codtip,                 :tamanho => 10     # CÛdigo Tipo de Produto para Faturamento 
      attr_valor_financeiro    :quantidade,             :tamanho => 20     # Quantidade
      attr_valor_financeiro    :precounitario,          :tamanho => 20     # PreÁo Unit·rio
      attr_valor_financeiro    :precotabela,            :tamanho => 20     # PreÁo da Tabela 
      attr_valor_financeiro    :percentualdesc,         :tamanho => 20     # Percentual do Desconto
      attr_valor_financeiro    :valordesc,              :tamanho => 20     # Valor Desconto
      attr_valor_financeiro    :percentualdesp,         :tamanho => 20     # Percentual da Despesa 
      attr_valor_financeiro    :valordesp,              :tamanho => 20     # Valor Despesa 
      attr_data                :dataemissao,            :tamanho => 10     # Data de Emiss„o 
      attr_alfa                :codmen,                 :tamanho => 5      # CÛdigo da Mensagem
      attr_numerico            :numerotributos,         :tamanho => 5      # N˙mero de Tributos
      attr_alfa                :codtb1fat,              :tamanho => 10     # CÛdigo Tabela ClassificaÁ„o1 Produto
      attr_alfa                :codtb2fat,              :tamanho => 10     # CÛdigo Tabela ClassificaÁ„o2Produto 
      attr_alfa                :codtb3fat,              :tamanho => 10     # CÛdigo Tabela ClassificaÁ„o3Produto 
      attr_alfa                :codtb4fat,              :tamanho => 10     # CÛdigo Tabela ClassificaÁ„o4Produto 
      attr_alfa                :codtb5fat,              :tamanho => 10     # CÛdigo Tabela ClassificaÁ„o5Produto 
      attr_alfa                :codtb1flx,              :tamanho => 25     # CÛdigo Tabela ClassificaÁ„o1 Opcionais
      attr_alfa                :codtb2flx,              :tamanho => 25     # CÛdigo Tabela ClassificaÁ„o2 Opcionais
      attr_alfa                :codtb3flx,              :tamanho => 25     # CÛdigo Tabela ClassificaÁ„o3 Opcionais
      attr_alfa                :codtb4flx,              :tamanho => 25     # CÛdigo Tabela ClassificaÁ„o4 Opcionais
      attr_alfa                :codtb5flx,              :tamanho => 25     # CÛdigo Tabela ClassificaÁ„o5 Opcionais
      attr_alfa                :campolivre,             :tamanho => 15     # Campo Livre 
      attr_alfa                :codund,                 :tamanho => 5      # CÛdigo da Unidade 
      attr_valor_financeiro    :quantidadeareceber,     :tamanho => 20     # Quantidade a Receber
      attr_numerico            :idnat,                  :tamanho => 5      # Identificador da Natureza 
      attr_alfa                :codcpg,                 :tamanho => 5      # CÛdigo da CondiÁ„o de Pagamento 
      attr_data                :dataentrega,            :tamanho => 10     # Data da Entrega 
      attr_alfa                :prateleira,             :tamanho => 15     # Prateleira
      attr_numerico            :idcnt,                  :tamanho => 10     # Identificador do Contrato 
      attr_numerico            :nseqitmcnt,             :tamanho => 5      # N˙mero Sequencial do Item de Contrato 
      attr_valor_financeiro    :valortotalitem,         :tamanho => 20     # Valor Total do Item 
      attr_alfa                :codccusto,              :tamanho => 25     # Centro de Custo 
      attr_alfa                :codnat,                 :tamanho => 20     # CÛdigo da Natureza
      attr_alfa                :codrpr,                 :tamanho => 15     # Representante 
      attr_alfa                :idprdcomposto,          :tamanho => 30     # Identificador do Produto Kit
      attr_alfa                :coddepartamento,        :tamanho => 25     # CÛdigo do Departamento
      attr_alfa                :tributacaoecf,          :tamanho => 10     # CÛdigo da TributaÁ„o ECF
      attr_valor_financeiro    :valorescrituracao,      :tamanho => 20     # Valor EscrituraÁ„o Fiscal 
      attr_alfa                :valorcodigoprd,         :tamanho => 60     # Valor do CÛdigo do Produto
      attr_numerico            :tipocodigoprd,          :tamanho => 5      # Tipo do CÛdigo do Produto 
      attr_alfa                :cst,                    :tamanho => 3      # CÛdigo SituaÁ„o Tribut·ria
      attr_alfa                :codtrf,                 :tamanho => 60     #   
      attr_alfa                :codtborcamento,         :tamanho => 10     # CÛd. da Tabela de natureza do OrÁamento 
      attr_valor_financeiro    :valoropfrm1,            :tamanho => 20     # Valor opcional 1 por fÛrmula
      attr_valor_financeiro    :valoropfrm2,            :tamanho => 20     # Valor opcional 2 por fÛrmula
      attr_alfa                :cancelado,              :tamanho => 1      #   
      attr_valor_financeiro    :valoruntorcamento,      :tamanho => 20     # Valor Unit·rio do OrÁamento 
      attr_data                :dataorcamento,          :tamanho => 10     # Data do OrÁamento 
      attr_valor_financeiro    :comissaorepres,         :tamanho => 20     # Percentual de comiss„o do repres. 
      attr_valor_financeiro    :qtdundpedido,           :tamanho => 20     # Quantidade na Unid. do Pedido 
      attr_numerico            :codfilial,              :tamanho => 5      # CÛdigo da Filial
      attr_alfa                :codloc,                 :tamanho => 15     # CÛdigo do Local de Estoque Movimentado
      attr_valor_financeiro    :valorliquido,           :tamanho => 20     # Valor LÌquido do Item 
      attr_alfa                :codven1,                :tamanho => 16     # CÛdigo do vendedor
      attr_valor_financeiro    :percentcomissao,        :tamanho => 20     # Comiss„o do funcion·rio por item 

    
      # attr_alfa :, :tamanho => 
      # attr_valor_financeiro :, :tamanho =>
      # attr_numerico :, :tamanho => 
      # attr_data :, :tamanho => 
      # attr_nao_utilizado :, :tamanho => 
    end
  end
end