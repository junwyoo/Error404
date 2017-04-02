Rails.application.routes.draw do
  root"home#login"
  
  # All the gets
  
  get'home/login'
  get'home/main'
  get'home/upload'
  get'home/best'
  get'home/out_of_league'
  get'home/board'
  get'home/write'
  get'home/board_write'
  get'home/index'
  
  get'home/left'
  
  get 'auth/:provider/callback', to: 'home#main'
  
  #example mock up
  get'home/user1'
  
  get "post/postings/:id" => "home#postings"
  
  # commented out ############
  # get "main" => "home#main"
  # get "login" => "home#login"
  # get "upload" => "home#upload"
  # get "board" => "home#board"
  # get "out_of_league" => "home#out_of_league"
  # get "best" => "home#best"
  
  # #example mock up
  # get "user1" => "home#user1"
  # ##########################
  
  
  # all the posts
  
  post "upload_image" => "home#picture"
  post "write-on-board" => "home#board_post"
  post "upvote" => "home#upvote"

  post "vote_left" => "home#vote_left"
  post "vote_right" => "home#vote_right"
  
  

  


end

