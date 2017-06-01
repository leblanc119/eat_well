Rails.application.routes.draw do
  # Routes for the Plancontent resource:
  # CREATE
  get "/plancontents/new", :controller => "plancontents", :action => "new"
  post "/create_plancontent", :controller => "plancontents", :action => "create"

  # READ
  get "/plancontents", :controller => "plancontents", :action => "index"
  get "/plancontents/:id", :controller => "plancontents", :action => "show"

  # UPDATE
  get "/plancontents/:id/edit", :controller => "plancontents", :action => "edit"
  post "/update_plancontent/:id", :controller => "plancontents", :action => "update"

  # DELETE
  get "/delete_plancontent/:id", :controller => "plancontents", :action => "destroy"
  #------------------------------

  # Routes for the Plan resource:
  # CREATE
  get "/plans/new", :controller => "plans", :action => "new"
  post "/create_plan", :controller => "plans", :action => "create"

  # READ
  get "/plans", :controller => "plans", :action => "index"
  get "/plans/:id", :controller => "plans", :action => "show"

  # UPDATE
  get "/plans/:id/edit", :controller => "plans", :action => "edit"
  post "/update_plan/:id", :controller => "plans", :action => "update"

  # DELETE
  get "/delete_plan/:id", :controller => "plans", :action => "destroy"
  #------------------------------

  # Routes for the Meal_time resource:
  # CREATE
  get "/meal_times/new", :controller => "meal_times", :action => "new"
  post "/create_meal_time", :controller => "meal_times", :action => "create"

  # READ
  get "/meal_times", :controller => "meal_times", :action => "index"
  get "/meal_times/:id", :controller => "meal_times", :action => "show"

  # UPDATE
  get "/meal_times/:id/edit", :controller => "meal_times", :action => "edit"
  post "/update_meal_time/:id", :controller => "meal_times", :action => "update"

  # DELETE
  get "/delete_meal_time/:id", :controller => "meal_times", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Meal_tag resource:
  # CREATE
  get "/meal_tags/new", :controller => "meal_tags", :action => "new"
  post "/create_meal_tag", :controller => "meal_tags", :action => "create"

  # READ
  get "/meal_tags", :controller => "meal_tags", :action => "index"
  get "/meal_tags/:id", :controller => "meal_tags", :action => "show"

  # UPDATE
  get "/meal_tags/:id/edit", :controller => "meal_tags", :action => "edit"
  post "/update_meal_tag/:id", :controller => "meal_tags", :action => "update"

  # DELETE
  get "/delete_meal_tag/:id", :controller => "meal_tags", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/create/:meal_id", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Meal resource:
  # CREATE
  get "/meals/new", :controller => "meals", :action => "new"
  post "/create_meal", :controller => "meals", :action => "create"

  # READ
  get "/meals", :controller => "meals", :action => "index"
  get "/meals/:id", :controller => "meals", :action => "show"

  # UPDATE
  get "/meals/:id/edit", :controller => "meals", :action => "edit"
  post "/update_meal/:id", :controller => "meals", :action => "update"

  # DELETE
  get "/delete_meal/:id", :controller => "meals", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "plans#index"

end
