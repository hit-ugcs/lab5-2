class StudentsController < ApplicationController

before_filter :authenticate_user!

  def list
    @len= Student.all.length
    @pid= (params[:id]).to_i
    @pnum= @pid*10
    a = Student.all.length
    @students = []
    allstu =[]
    i=1

    while a>0 do
      if Student.exists?(i)
        allstu=allstu+[Student.find(i)]
        a=a-1
        i=i+1
      else
        i=i+1
      end
    end
    

    if @len>=@pnum
      for k in 0..9 do
        @students=@students+[allstu[@pnum-10+k]]
      end
    else 
      for k in 0..@len+9-@pnum do
        @students=@students+[allstu[@pnum-10+k]]
      end
    end
  end

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to list_path(1), notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to list_path, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to list_url(1)}
      format.json { head :no_content }
    end
  end
end
