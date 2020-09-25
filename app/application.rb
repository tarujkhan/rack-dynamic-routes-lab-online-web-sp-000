class Application
  
  @@items = []
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path[0,6] == "/items"
      #binding.pry
     @@items.each do |item|
        #binding.pry
        if req.path[0,6] == item
     resp.write "#{price} of #{item}"
   end
   end
   
      resp.write "Item not found"
      resp.status = 400
    # else
    #   resp.write "Route not found"
    #   resp.status = 404
    end
  resp.finish
  end
end
