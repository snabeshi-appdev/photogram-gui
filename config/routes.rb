Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "show"})

  get("/photos",{:controller => "photos",:action => "index"})
  get("/photos/insert_photo_record",{:controller => "photos", :action => "insert"})
  get("/photos/:path_id",{:controller => "photos", :action => "show"})
  get("/delete_photo/:photo_id",{:controller => "photos", :action => "delete"})


end
