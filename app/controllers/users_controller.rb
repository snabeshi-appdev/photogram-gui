class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_all_users = matching_users.order({:username => :asc})
    render({:template => "/user_templates/index.html.erb"})
  end

  def show
    user_name = params.fetch("path_username")
    matching_users = User.where({:username => user_name})
    @the_user = matching_users.at(0)

    # if @the_user == nil
    #   redirect_to("/404")
    # else
      render({:template => "/user_templates/show.html.erb"})
    # end
  end

end
