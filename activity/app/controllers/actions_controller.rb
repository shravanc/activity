class ActionsController < ApplicationController

  def create
    Action.create(data: params[:data].as_json)
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
