# encoding: UTF-8
require 'active_support/concern'
require 'active_support/inflector'

module RmfluxusRails
  
  module LayoutRmfluxus
    
    extend ActiveSupport::Concern
    include ActiveSupport::Inflector
    
    included do
      
      def exportar
        template_file = File.open("#{Rails.root}/app/lib/#{self.class.name.underscore}.rmfluxus.erb", 'r').read
        erb = ERB.new(template_file)
        erb.result(binding)
      end
    end

    module ClassMethods
          
      def attr_numerico name, hash = {}

        raise ArgumentError.new("Faltou fornecer o tamanho do campo") unless hash[:tamanho].is_a? Integer

        define_method(name) do
          return " " * hash[:tamanho] if instance_variable_get("@#{name}").nil?
          return instance_variable_get("@#{name}").to_s.rjust(hash[:tamanho], "0")
        end

        define_method("#{name}=") do |value|

          if value.nil? || value.is_a?(Integer)
            
            value = value.to_s[0 .. (hash[:tamanho] - 1)].to_i if value && hash[:tamanho] < value.to_s.length
            instance_variable_set("@#{name}", value)
          else
            raise ArgumentError.new("Deve ser um inteiro")
          end
        
        end
      end
    
      def attr_alfa name, hash = {}

        raise ArgumentError.new("Faltou fornecer o tamanho do campo") unless hash[:tamanho].is_a? Integer
      
        define_method(name) do
          return " " * hash[:tamanho] if instance_variable_get("@#{name}").nil?
          return instance_variable_get("@#{name}").to_s.ljust(hash[:tamanho], " ")
        end

        define_method("#{name}=") do |value|
          
          value = value.to_s[0 .. (hash[:tamanho] - 1)] if value && hash[:tamanho] < value.to_s.length
          instance_variable_set("@#{name}", value.to_s)
        end
      end
    
      def attr_valor_financeiro name, hash = {}

        raise ArgumentError.new("Faltou fornecer o tamanho do campo") unless hash[:tamanho].is_a? Integer
        
        decimais = hash[:casas_decimais] || 2
        
        define_method(name) do
          return " " * hash[:tamanho] if instance_variable_get("@#{name}").nil?
          return ("%.#{decimais}f" % instance_variable_get("@#{name}")).to_s.rjust(hash[:tamanho], "0")
        end

        define_method("#{name}=") do |value|

          if value.nil? || value.is_a?(Numeric)
            
            value = value.to_s[0 .. (hash[:tamanho] - 1)].to_f if value && hash[:tamanho] < value.to_s.length
            instance_variable_set("@#{name}", value)
          else
            raise ArgumentError.new("Deve ser um número")
          end
        
        end
      end
    
      def attr_data name, hash = {}
      
        raise ArgumentError.new("Faltou fornecer o tamanho do campo") unless hash[:tamanho].is_a? Integer
      
        define_method(name) do
        
          return " " * hash[:tamanho] if instance_variable_get("@#{name}").nil?
          return instance_variable_get("@#{name}").to_s.ljust(hash[:tamanho], " ")
        end

        define_method("#{name}=") do |value|

          date = nil
          date = Date.strptime(value, '%d/%m/%Y') if(value.length == 10)
          date = Date.strptime(value, '%d%m%Y') if(value.length == 8)
        
          if value.nil? || date.is_a?(Date)
            value = value.to_s[0 .. (hash[:tamanho] - 1)] if value && hash[:tamanho] < value.to_s.length
            instance_variable_set("@#{name}", value)
          else
            raise ArgumentError.new("Deve estar no formato DD/MM/YYYY ou DDMMYYYY")
          end
        
        end
      end
    
      def attr_nao_utilizado name, hash = {}
      
        raise ArgumentError.new("Faltou fornecer o tamanho do campo") unless hash[:tamanho].is_a? Integer
      
        define_method(name) do
          return " " * hash[:tamanho]
        end
      end
    end
  end
end