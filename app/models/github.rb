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
#add GitHub Token here
    end

    def headers
      {"User-Agent" => user_agent}
    end

  end

end
