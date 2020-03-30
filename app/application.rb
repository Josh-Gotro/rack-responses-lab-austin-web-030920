class Application

    def call(env)
        respond = Rack::Response.new
        if Time.now.hour >=12
            respond.write "Good Afternoon"
        else
            respond.write "Good Morning"
        end
        respond.finish
    end

end
