module Github
  class Client
    include HTTParty
    base_uri "https://api.github.com"

    def contributors(org_name="coinbase", repo_name="omniauth-coinbase")
      self.class.get("/repos/#{org_name}/#{repo_name}/contributors", headers: headers, query: { access_token: token})
    end

    def user_agent
      "My-Hall-of-Fame-App"
    end

    def token
      "1f9a585becbcf55e6af0f76201e6fcb76d0dc3cf"
    end

    def headers
      {"User-Agent" => user_agent}
    end

  end

end
