class ArticlesController < ApplicationController

def index 
    article = Article.all
    render json: article
end 

def show 
    article = Article.find(params([id]))
    render json: article
end 

def create
    article = Article.create(article_params)
end

def update
    article = Article.find(params[:id])
end 


private

def article_params
    permit.require(:article).permit(:title, :body)
end 


end