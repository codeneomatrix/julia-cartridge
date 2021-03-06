using Merly

ur= ENV["OPENSHIFT_REPO_DIR"]
host = getaddrinfo(ENV["OPENSHIFT_JULIA_IP"])
port = parse(Int,ENV["OPENSHIFT_JULIA_PORT"])


  server = Merly.app()

  server.webserverpath(ur)
  server.webserverfiles("jl")

  @page "/" begin
    res.headers["Content-Type"]= "text/html"
    File("welcome.html")
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

  server.start(Dict("host" => "$host","port" =>port))
