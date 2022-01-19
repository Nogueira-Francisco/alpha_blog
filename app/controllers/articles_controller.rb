class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new

    end

    def create
        @article_now = Article.new(params.require(:article).permit(:title, :description))
        @article_now.save
        redirect_to @article_now
    end
end
