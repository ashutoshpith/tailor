class RepairProblemsController < ApplicationController
  before_action :set_repair_problem, only: [:show, :edit, :update, :destroy]

  # GET /repair_problems
  # GET /repair_problems.json
  def index
    @repair_problems = RepairProblem.all
  end

  # GET /repair_problems/1
  # GET /repair_problems/1.json
  def show
  end

  # GET /repair_problems/new
  def new
    @repair_problem = RepairProblem.new
  end

  # GET /repair_problems/1/edit
  def edit
  end

  # POST /repair_problems
  # POST /repair_problems.json
  def create
    @repair_problem = RepairProblem.new(repair_problem_params)

    respond_to do |format|
      if @repair_problem.save
        format.html { redirect_to @repair_problem, notice: 'Repair problem was successfully created.' }
        format.json { render :show, status: :created, location: @repair_problem }
      else
        format.html { render :new }
        format.json { render json: @repair_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_problems/1
  # PATCH/PUT /repair_problems/1.json
  def update
    respond_to do |format|
      if @repair_problem.update(repair_problem_params)
        format.html { redirect_to @repair_problem, notice: 'Repair problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_problem }
      else
        format.html { render :edit }
        format.json { render json: @repair_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_problems/1
  # DELETE /repair_problems/1.json
  def destroy
    @repair_problem.destroy
    respond_to do |format|
      format.html { redirect_to repair_problems_url, notice: 'Repair problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_problem
      @repair_problem = RepairProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_problem_params
      params.require(:repair_problem).permit(:repair_id, :problem_id)
    end
end
