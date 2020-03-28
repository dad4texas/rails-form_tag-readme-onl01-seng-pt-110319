class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
  Post.create(title: params[:post][:title], description: params[:post][:description])
  redirect_to posts_path
  end

end
class Application < Rails::Application
  config.web_console.whitelisted_ips = '<IP address here>'
end
