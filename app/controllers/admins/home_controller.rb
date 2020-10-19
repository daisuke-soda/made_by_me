class Admins::HomeController < ApplicationController
  def top
    @genres = Genre.all.where(is_active: true)
  end
end
