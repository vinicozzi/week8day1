require 'rack'

app =  Proc.new do |env|
    ['200',{"Content-Type"=>'text/html'}, ['Hello, Rok']]
    # req = Rack::Request.new(env)
    # res = Rack::Request.new 
    # res['Content-Type'] = 'text/html'
    # res.write['Hello Arvid!']
    # res.finish 
end 

# app = Proc.new do |env|
#     req = Rack::Request.new(env)
#     res = Rack::Response.new
#     MyController.new(req, res).execute
#     res.finish
#   end


Rack::Server.start(
    app: app, 
    Port: 3000
)