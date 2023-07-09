class Admin::StudentsController < Admin::ApplicationController
  def index
    @students = Student.all.page(params[:page]).per(5)
    if params[:grade].present?
      @students = @students.get_by_grade params[:grade]
    end
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:name, :email, :alias, :student_code, :grade, :birth, :admission))
     begin
       @student.save!
       redirect_to admin_students_complete_path
     else
       render "new"
     end
  end

  def show
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
     if @student.update(params.require(:student).permit(:name, :email, :alias,     :student_code, :grade, :birth, :admission))
       flash[:notice] = "ユーザーIDが「#{@student.id}」の情報を更新しました"
       redirect_to admin_students_complete_path
     else
       render "edit"
     end
  end

  def destroy
  end

  def complete
  end

end
