require "rmfluxus_rails/layout_rmfluxus.rb"

# Tabela de Intens de Movimentos

module RmfluxusRails
  module LayoutNF
    class LancamentoFinanceiro
      
      include LayoutRmfluxus
  
      attr_numerico             :codfilial,              :tamanho => 5       # Filial                                     
      attr_alfa                 :codcfo,                 :tamanho => 25      # Cliente/Fornecedor                         
      attr_alfa                 :codtdo,                 :tamanho => 10      # Tipo de Documento                          
      attr_alfa                 :numerodocumento,        :tamanho => 40      # N˙mero do Documento                        
      attr_alfa                 :seriedocumento,         :tamanho => 8       # SÈrie do Documento                         
      attr_numerico             :nfoudup,                :tamanho => 5       # Status do Faturamento                      
      attr_numerico             :pagrec,                 :tamanho => 5       # Pagar ou Receber                           
      attr_alfa                 :codtb1flx,              :tamanho => 25      # Tabela Opcional 1                          
      attr_alfa                 :codtb2flx,              :tamanho => 25      # Tabela Opcional 2                          
      attr_alfa                 :codtb3flx,              :tamanho => 25      # Tabela Opcional 3                          
      attr_alfa                 :codtb4flx,              :tamanho => 25      # Tabela Opcional 4                          
      attr_alfa                 :codtb5flx,              :tamanho => 25      # Tabela Opcional 5                          
      attr_alfa                 :coddepartamento,        :tamanho => 25      # Departamento                               
      attr_alfa                 :codccusto,              :tamanho => 25      # Centro de Custo                            
      attr_data                 :datavencimento,         :tamanho => 10      # Data de Vencimento                         
      attr_data                 :dataemissao,            :tamanho => 10      # Data de Emiss„o                            
      attr_data                 :databaixa,              :tamanho => 10      # Data de Baixa                              
      attr_data                 :dataprevbaixa,          :tamanho => 10      # Data de Previs„o de Baixa                  
      attr_data                 :datacontabiliz,         :tamanho => 10      # Data de ContabilizaÁ„o                     
      attr_data                 :datacancelamento,       :tamanho => 10      # Data de Cancelamento                       
      attr_data                 :datacancelbaixa,        :tamanho => 10      # Data de Cancelamento de Baixa              
      attr_data                 :dataestornolan,         :tamanho => 10      # Data de Estorno                            
      attr_data                 :datacontabilizbx,       :tamanho => 10      # Data de ContabilizaÁ„o da Baixa            
      attr_alfa                 :historico,              :tamanho => 255     # HistÛrico                                  
      attr_numerico             :tipocontabillan,        :tamanho => 5       # Tipo Cont·bil                              
      attr_alfa                 :codmoevalororiginal,    :tamanho => 10      # Moeda                                      
      attr_alfa                 :codindexador,           :tamanho => 10      # Indexador                                  
      attr_alfa                 :codcxa,                 :tamanho => 10      # Conta/Caixa                                
      attr_valor_financeiro     :valororiginal,          :tamanho => 20      # Valor Original                             
      attr_valor_financeiro     :valorbaixado,           :tamanho => 20      # Valor Baixado                              
      attr_valor_financeiro     :valorcap,               :tamanho => 20      # Valor da CapitalizaÁ„o                     
      attr_valor_financeiro     :valorjuros,             :tamanho => 20      # Valor dos Juros                            
      attr_valor_financeiro     :valordesconto,          :tamanho => 20      # Valor do Desconto                          
      attr_valor_financeiro     :valorop1,               :tamanho => 20      # Valor Opcional 1                           
      attr_valor_financeiro     :valorop2,               :tamanho => 20      # Valor Opcional 2                           
      attr_valor_financeiro     :valorop3,               :tamanho => 20      # Valor Opcional 3                           
      attr_valor_financeiro     :valorop4,               :tamanho => 20      # Valor Opcional 4                           
      attr_valor_financeiro     :valorop5,               :tamanho => 20      # Valor Opcional 5                           
      attr_valor_financeiro     :jurosdia,               :tamanho => 20      # Juros ao Dia                               
      attr_valor_financeiro     :capmensal,              :tamanho => 20      # CapitalizaÁ„o Mensal                       
      attr_numerico             :filialcontabil,         :tamanho => 5       # Filial Cont·bil                            
      attr_alfa                 :numerocontabil,         :tamanho => 20      # N˙mero Cont·bil                            
      attr_alfa                 :segundonumero,          :tamanho => 20      # Segundo N˙mero                             
      attr_numerico             :statuslan,              :tamanho => 5       # Status do LanÁamento                       
      attr_numerico             :libautorizada,          :tamanho => 5       # LiberaÁ„o Autorizada                       
      attr_numerico             :statusexportacao,       :tamanho => 5       # Status da ExpotaÁ„o                        
      attr_numerico             :numlotecontabil,        :tamanho => 5       # N˙mero do Lote Cont·bil                    
      attr_alfa                 :numerocheque,           :tamanho => 20      # N˙mero do Cheque                           
      attr_data                 :datacheque,             :tamanho => 10      # Data do Cheque                             
      attr_valor_financeiro     :valorcheque,            :tamanho => 20      # Valor do Cheque                            
      attr_numerico             :statusextrato,          :tamanho => 5       # Status do Extrato                          
      attr_data                 :dataop1,                :tamanho => 10      # Data Opcional 1                            
      attr_data                 :dataop2,                :tamanho => 10      # Data Opcional 2                            
      attr_data                 :dataop3,                :tamanho => 10      # Data Opcional 3                            
      attr_numerico             :canceladofat,           :tamanho => 5       # Cancelado pelo RM Nucleus                  
      attr_numerico             :faturadofat,            :tamanho => 5       # Faturado pelo RM Nucleus                   
      attr_numerico             :cnabcarteira,           :tamanho => 5       # Carteira  (CobranÁa EletrÙnica)            
      attr_numerico             :cnabcomando,            :tamanho => 5       # Comando  (CobranÁa EletrÙnica)             
      attr_numerico             :cnabaceite,             :tamanho => 5       # Aceite (CobranÁa EletrÙnica)               
      attr_numerico             :cnabinstrucaocod1,      :tamanho => 5       # InstruÁ„o Cod 1  (CobranÁa EletrÙnica)     
      attr_numerico             :cnabinstrucaocod2,      :tamanho => 5       # InstruÁ„o Cod 2  (CobranÁa EletrÙnica)     
      attr_alfa                 :cnabnossonumero,        :tamanho => 20      # Nosso N˙mero  (CobranÁa EletrÙnica)        
      attr_numerico             :codcolcfo,              :tamanho => 5       # Coligada do Cli/For                        
      attr_numerico             :codcolcxa,              :tamanho => 5       # Coligada da Conta/Caixa                    
      attr_valor_financeiro     :valorop6,               :tamanho => 20      # Valor Opcional 6                           
      attr_valor_financeiro     :valorop7,               :tamanho => 20      # Valor Opcional 7                           
      attr_valor_financeiro     :valorop8,               :tamanho => 20      # Valor Opcional 8                           
      attr_numerico             :cnabstatus,             :tamanho => 5       # Status Cnab                                
      attr_alfa                 :campoalfaop1,           :tamanho => 100     # Campo Alfa Opcional 1                      
      attr_alfa                 :campoalfaop2,           :tamanho => 20      # Campo Alfa Opcional 2                      
      attr_alfa                 :campoalfaop3,           :tamanho => 20      # Campo Alfa Opcional 3                      
      attr_alfa                 :cnabbanco,              :tamanho => 3       # CÛdigo do Banco (CobranÁa EletrÙnica)      
      attr_alfa                 :cgccfo,                 :tamanho => 20      #                                            
      attr_numerico             :reutilizacao,           :tamanho => 5       # ReutilizaÁ„o do bloco de notas fiscais.    
      attr_alfa                 :ipte,                   :tamanho => 48      # Ipte (Pagamento EletrÙnico)                
      attr_alfa                 :codigobarra,            :tamanho => 44      # CÛdigo de Barra (Pagamento EletrÙnico)     
      attr_numerico             :numbloqueios,           :tamanho => 5       # N˙mero de Bloqueios                        
      attr_valor_financeiro     :inssemoutraempresa,     :tamanho => 20      # INSS Rec.em Outra Emp.na CompetÍncia       
      attr_alfa                 :codformapagto,          :tamanho => 10      #                                            
      attr_alfa                 :convenio,               :tamanho => 20      # ConvÍnio                                   

      # attr_alfa :, :tamanho => 
      # attr_attr_valor_financeiro_financeiro :, :tamanho =>
      # attr_numerico :, :tamanho => 
      # attr_attr_data :, :tamanho => 
      # attr_nao_utilizado :, :tamanho => 
    end
  end
end