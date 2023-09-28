class UserArea::ApplicationController < ApplicationController
  before_action :authenticate_user!

  layout "user_area"
end