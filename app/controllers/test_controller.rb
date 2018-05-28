class TestController < ApplicationController

def index
@q = User.ransack(params[:q])
@products = @q.result
#@q.build_condition

   respond_to do |format|
    format.html
    format.json { render json: UserDatatable.new(view_context, user: @products) }
  end


end

end
