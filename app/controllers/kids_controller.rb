class KidsController < ApplicationController
  def update
    @kid = Kid.find(params[:id])

    pickup = if params[:commit] == "Me"
      current_user
    else
      User.not_me(current_user).first
    end

    @kid.pickup = pickup
    @kid.save!

    Notifications.pickup_set(pickup, pickup, @kid, current_user).deliver

    redirect_to root_url
  end
end
