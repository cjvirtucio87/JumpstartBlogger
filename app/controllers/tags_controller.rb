class TagsController < ApplicationController

  def new
  end

  def create
  end

  def show
    tag = Tag.find(params[:id])
    render'tags/show', locals: { tag: tag }
  end

end