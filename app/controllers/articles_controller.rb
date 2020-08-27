class ArticlesController < ApplicationController

def index 
    article = Article.all
    render json: article
end 

def show 
    article = Article.find(params([:id]))
    render json: article
end 

def create
    article = Article.create(article_params)
    render json: article
end

def update
    article = Article.find(params[:id])
    article.update(article_params)
    render json: article
end 


private

def article_params
    params.require(:article).permit(:title, :body)
end 


end