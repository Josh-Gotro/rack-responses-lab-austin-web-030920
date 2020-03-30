class Application

    def call(env)
        respond = Rack::Response.new
        now = Time.now
        if now.hour >=12
            respond.write "Good Afternoon"
        else
            respond.write "Good Morning"
        end
        respond.finish
    end

end
