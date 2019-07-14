class Application
    
    def call(env)
        resp = Rack::Response.new

        time_now = Time.now

        if time_now.hour <= 12
            resp.write "Morning Time"
        elsif time_now.hour >= 12
            resp.write "Good Afternoon"
        end
        resp.finish
    end
end