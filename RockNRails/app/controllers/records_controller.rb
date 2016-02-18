class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.create(record_params)
    @record.save
    redirect_to "/records"
  end

  def destroy
    Record.destroy(params[:id])
    redirect_to "/records"
  end

  private
  def record_params
     params.require(:record).permit(:title, :year, :cover_art, :song_count)
  end
end
