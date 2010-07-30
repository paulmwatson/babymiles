ActionController::Routing::Routes.draw do |map|
  map.resources :milestone_categories

  map.resources :locations

  map.resources :parents

  map.resources :milestones

  map.resources :children

  map.resources :statuses

  map.root :controller => 'statuses'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
