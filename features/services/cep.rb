module Rest
    class CEP
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
        
        def get_cep(cep)
            self.class.get("/ws/#{cep}/json")
        end          
    end
end