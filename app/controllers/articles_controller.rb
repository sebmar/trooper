	class ArticlesController < ApplicationController
before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]
def index
  	@articles = Article.all
end

def show
	@article = Article.find(params[:id])
end

def new
@article = Article.new
end

def create
@article = current_user.articles.new(params[:article])
@article.save
flash.notice = "Article '#{@article.title}' Posted!"
redirect_to article_path(@article)
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy
  redirect_to articles_path(@article)
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update_attributes(params[:article])
flash.notice = "Article '#{@article.title}' Updated!"
  redirect_to article_path(@article)
end
	end
