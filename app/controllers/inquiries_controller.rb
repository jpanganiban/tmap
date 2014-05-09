class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new(x: params[:x], y: params[:y])
  end
end
