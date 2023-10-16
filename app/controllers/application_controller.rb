class ApplicationController < ActionController::Base
  before_action :set_query

  def set_query
    @q = Card.ransack(params[:q])
    @cards = @q.result(distinct: true)
  end
end
