class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @courses = Course.all
    @course  = Course.find_by(title: params[:id]) 
    render "courses/#{params[:id]}"
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course has been created."
      redirect_to courses_path
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
 
def railsapp
end

def railsapp2
end
  
private
      def course_params
        params.require(:course).permit(:title, :description, :course_id)
      end
end
