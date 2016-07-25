class ArticlesController < ApplicationController

  def index
    render 'index', locals: { articles: Article.all,
                              comment: Comment.new }
  end

  def show
    article = Article.find_by(id: params[:id])
    comment = Comment.new
    comment.article_id = article.id
    render 'show', locals: { article: article, comment: comment }
  end

  def new
    article = Article.new
    render new_article_path, locals: { article: article }
  end

  def create
    article = Article.new(article_params)
    article.save
    redirect_to article_path(article), locals: { article: article }
  end

  def edit
    article = Article.find(params[:id])
    render 'edit', locals: { article: article,
                             comment: Comment.new }
  end

  def update
    article = Article.find(params[:id])
    article.update_attributes(article_params)
    comment = Comment.new
    comment.article_id = article.id
    render 'show', locals: { article: article,
                             comment: comment }
  end

  def destroy
    article = Article.delete(params[:id])
    render 'index', locals: { articles: Article.all, 
                              comment: Comment.new }
  end

  private

    def article_params
      params.require(:article).permit(:title,:body,:tag_list)
    end
end
