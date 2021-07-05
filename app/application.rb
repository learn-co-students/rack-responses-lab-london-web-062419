class Application
  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..24)
    

    resp.write "#{num_1}\n"
    

    if num_1 < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
