class ScreeningsController < ApplicationController
  before_action :set_screening, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

def index
  @screenings = Screening.all
  if params[:search]
    @screenings = Screening.search(params[:search]).order("created_at DESC").page(params[:page]).decorate
  else
    @screenings = Screening.all.order("created_at DESC").page(params[:page]).decorate
  end
end

  def show
    @screening = Screening.find(params[:id]).decorate
  end

  def new
    @screening = Screening.new
    @customers = Customer.all.order(:email)
    @films = Film.all.order(:title)
  end

  def edit
 @customers = Customer.all.order(:email)
    @films = Film.all.order(:title)
  end

  def create
    @screening = Screening.new(screening_params)
    @customers = Customer.all.order(:email)
    @films = Film.all.order(:title)

    respond_to do |format|
      if @screening.save
        format.html { redirect_to @screening, notice: 'Screening was successfully created.' }
        format.json { render :show, status: :created, location: @screening }
      else
        format.html { render :new }
        format.json { render json: @screening.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @customers = Customer.all.order(:email)
    @films = Film.all.order(:title)
    respond_to do |format|
      if @screening.update(screening_params)
        format.html { redirect_to @screening, notice: 'Screening was successfully updated.' }
        format.json { render :show, status: :ok, location: @screening }
      else
        format.html { render :edit }
        format.json { render json: @screening.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @screening.destroy
    respond_to do |format|
      format.html { redirect_to screenings_url, notice: 'Screening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_screening
      @screening = Screening.find(params[:id])
    end

    def screening_params
      params.require(:screening).permit(:customer_id, :film_id, :screeningdate, :price)
    end
end
