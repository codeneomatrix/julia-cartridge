# julia-cartridge


Julia Openshift Cartridge

Provide the next URL for cartridge definition when create a new application:
https://raw.githubusercontent.com/codeneomatrix/julia-cartridge/master/metadata/manifest.yml

##Example
The most convenient way for use this cartridge it's using Red-Hat Client (Installation, configuration and further info can be found in https://developers.openshift.com/en/managing-client-tools.html), we'll do next things:
* Create your application
* Login and using julia
* Optionally start the web server and test


Now you can test the next urls in your browser:
<pre><code>http://my_project_name-your_user.rhcloud.com
http://my_project_name-your_user.rhcloud.com/welcome.html
http://my_project_name-your_user.rhcloud.com/static/test.html
</code></pre>

By default, all files that have no extension will be displayed .jl:
<pre><code>http://my_project_name-your_user.rhcloud.com/server.jl   # 404: Not Found</code></pre>



You must edit <strong>server.jl</strong> for adding your own content! You can see the original code at https://github.com/codeneomatrix/julia-cartridge/blob/master/template/server.jl, it was created using Merly
https://github.com/codeneomatrix/Merly.jl


##TODO:
* Make tools for easy deploy for parallel processing in openshift
