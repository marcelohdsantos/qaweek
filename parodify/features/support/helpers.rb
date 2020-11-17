require "httparty"

#método para consumir a api e toda vez que executar a mesma vai apagar o cadastro anterior.
#assim evita que o banco de dados fique cheio
module Helpers
    def delorean(email)
        HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
    end    
end