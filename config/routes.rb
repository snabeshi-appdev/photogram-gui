Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "details"})

end
