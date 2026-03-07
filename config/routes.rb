Rails.application.routes.draw do
  resources :tweets 
  #省略
  resources :perfumes
#省略

  root'tweets#index'
  
end
# :editと:updateを追加
#Rails.application.routes.draw do
#割愛

 # patch 'tweets/:id' => 'tweets#update'
 # get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
