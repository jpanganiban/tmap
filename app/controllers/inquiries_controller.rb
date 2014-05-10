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
    redirect_to result_inquiry_path(@inquiry)
  end
  
  def result
    @inquiry = Inquiry.find(params[:id])
    @safety_display = !@inquiry.result.any? ? "Yes." : "No."
    @reasons = @inquiry.result.map { |r| Reason.find_by_tag(r) }
    #@reasons = @inquiry.result
  end
end
