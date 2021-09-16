class ArticlesController < ApplicationController
  before_action :get_article, only: [:show, :edit, :update, :destroy]
  before_action :get_article, except: [:index, :new]

  def index
    @articles = Article.all
  end
  
  
  def show
     
    #how to redirect on this page using id
  end
  
  def new
    #after save how we can redirect to any page
  end

  def edit
     
  end

  def update

  end


  def destroy
 
  end

  def create      
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

end

private
  def get_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text)
  end



# what is the use of callbacks