class PoopsController < ApplicationController
  before_action :set_poop, only: %i[ show edit update destroy ]

  # GET /poops or /poops.json
  def index
    
  end

  # GET /poops/1 or /poops/1.json
  def show
  end

  # GET /poops/new
  def new
    @poop = Poop.new
  end

  # GET /poops/1/edit
  def edit
  end

  # POST /poops or /poops.json
  def create
    @poop = Poop.new(poop_params)

    respond_to do |format|
      if @poop.save
        format.html { redirect_to poops_url(@poop), notice: "Swiggity swoogity, you better be cleanin' dat booty" }
        # format.json { render :show, status: :created, location: @poop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poops/1 or /poops/1.json
  def update
    respond_to do |format|
      if @poop.update(poop_params)
        format.html { redirect_to poops_url(@poop), notice: "Don't be fudgin' your numbers, now!" }
        # format.json { render :show, status: :ok, location: @poop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poops/1 or /poops/1.json
  def destroy
    @poop.destroy

    respond_to do |format|
      format.html { redirect_to poops_url, notice: "Poop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def poop_modal_header_title
    @poop.new_record? ? "Create a poop" : "Update da poop"
  end
  helper_method :poop_modal_header_title

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poop
      @poop = Poop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poop_params
      params.require(:poop).permit(:user_id, :time, :stars, :description)
    end
end
