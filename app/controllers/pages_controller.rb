class PagesController < ApplicationController
  def index
    @grid = Inquiry.grid
    @tags = Terrain.tags
  end
end
