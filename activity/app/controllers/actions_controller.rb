class ActionsController < ApplicationController

  def create
    Rails.logger.warn params.as_json
    data = {"data" => params[:action].as_json, "status" => 200}
    Rails.logger.warn "***>#{data}<***"
    a = Action.create(data)
    render json: {"data" => "hello"}, status: :ok
    #Action.create(data: params[:action].as_json)
  end

  def index
    render json: Action.all.as_json
  end

  def show
    render json: Action.find(params[:id]).as_json
  end

  def update
    a = Action.where(id: params[:id])
    a.update_Attribute(data: params[:data])
    render json: a.data
  end
end
