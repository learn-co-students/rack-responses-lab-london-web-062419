require 'pry'
class Application
    def call(env)
        resp = Rack::Response.new
        now = Time.now.strftime("%H:%M")
        if now >= "12:00"
            resp.write "Good Afternoon!"
        else now <= "12:00"
            resp.write "Good Morning!"
        end 
        resp.finish
    end 
end 