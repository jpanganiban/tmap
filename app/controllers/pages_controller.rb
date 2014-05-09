class PagesController < ApplicationController
  def index
    @grid = Inquiry.grid
  end
end
