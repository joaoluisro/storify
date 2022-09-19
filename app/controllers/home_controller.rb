class HomeController < ApplicationController
  def index
    @users = User.all;
    @contacts = Contact.all;
    @comments = Comment.all;
    @stories = Story.all;
  end
end
