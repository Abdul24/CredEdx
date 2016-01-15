class CoursesController < ApplicationController
  def index
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @project.save
      flash[:notice] = "Course has been created."
      redirect_to @course
    else
    # nothing, yet
  end
end

  def update
  end

  def edit
  end

  def destroy
  end
 
  
private
      def course_params
        params.require(:course).permit(:title, :description, :course_id)
      end
end
