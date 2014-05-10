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
  	begin
  		@inquiry = Inquiry.find(params[:id])
  		random_response = Random.rand(3)
		case random_response
		when 0
			@safety_display = "Yes."
		when 1
			@safety_display = "No."
		else
			@safety_display = "Maybe."  	
			end  			
  	rescue ActiveRecord::RecordNotFound => ex
  		@safety_display = "Not found."
  	end
  end
end
