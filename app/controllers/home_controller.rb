class HomeController < ApplicationController
  before_action :authenticate_organisation!, only: [:index]
  before_action :authenticate_user!, only: [:login]

  def index
  end

  def login
  end

end
