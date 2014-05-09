class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new(x: params[:x], y: params[:y])
    Question.all.each do |q|
      @inquiry.answers.build(question_id: q.id)
    end
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.save

    # TODO: Redirect to page 3
    redirect_to :root
  end
end
