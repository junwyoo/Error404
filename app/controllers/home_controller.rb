class HomeController < ApplicationController
  def login
  end
  
  def main
  end
  
  def board
    @boarders=Boarder.all
  end
  
  def board_write
  end
  
  def board_post
    b = Boarder.new
    b.board_title = params[:board_title]
    b.board_content = params[:board_content]
    b.save
    
    redirect_to '/home/board'
  end
  
  def best
  end
  
  def out_of_league
  end
  
  def upload
    @users=User.all
  end
  
  def index
  end
  
  
  def user1
    @votes=Vote.all
  end
  
  def write
  end
  
  def vote_left
    v = Vote.new
    v.vote_id = params[:to_id]
    v.is_left = 1
    v.save
    redirect_to request.referrer
  end
  
  def vote_right
    v = Vote.new
    v.vote_id = params[:to_id]
    v.is_left = 0
    v.save
    redirect_to request.referrer
  end

  def picture
    w = User.new
    w.my_title = params[:my_title]
    w.my_text = params[:my_text]
    w.avatar = params[:my_image]
    w.avatar.url
    w.save
    
    uploader = AvatarUploader.new
    uploader.store!(params[:my_image])
    # uploader.retrieve_from_store!(params[:my_image])
    
    redirect_to "/home/upload"
  end
  
  def postings
      @value = params[:to_id]
      @user=User.find(params[:id])
      @votes=Vote.all
  end
end


