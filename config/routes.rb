Rails.application.routes.draw do

  get("/", { :controller => "main", :action => "landing"})

  get("/dice/:number_of_dice/:how_many_sides", {:controller => "main", :action => "dynamic"})

 
end
