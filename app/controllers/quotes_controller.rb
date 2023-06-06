class QuotesController < ApplicationController
  before_action :set_quote, only: %i[show update destroy]

  # GET /quotes
  def index
    @quote = Quote.order('Random()').limit(1)
    render json: @quote
  end
end
