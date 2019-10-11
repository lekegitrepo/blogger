class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Article.find(params[:id])
    @tag.destroy

    flash.notice = "Article '#{@tag.article}' deleted!"

    redirect_to tags_path
  end
end
