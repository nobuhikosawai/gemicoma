class Ruby::GemsController < ApplicationController
  before_action :need_login!

  def show
    @name = params[:name]
    specifications = Revision::Ruby::Specification.where(name: @name).joins(:revision_dependency_file)


  end

  private

  def need_login!
    raise ActiveRecord::RecordNotFound unless logged_in?
  end
end
