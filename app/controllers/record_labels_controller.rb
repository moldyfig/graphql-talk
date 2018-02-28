class RecordLabelsController < ApplicationController

  def index
    @record_labels = RecordLabel.all
  end

  def show
    @record_label = RecordLabel.find(params[:id])
  end

  def record_label_params
    params.require(:record_label).premit(:name, :founder, :headquarters, :year_founderd)
  end
end
