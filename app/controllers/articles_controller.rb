class ArticlesController < ApplicationController
  before_action :author?, only: [:edit]
  before_action :require_user, only: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles, @alphaParams = Article.all.alpha_paginate(params[:letter], {:js => false}){|art| art.fr_name}
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    @theme = @article.theme_ids
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.author = current_author

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Votre nouvel article vient d\'être créé !' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Vous venez de mettre à jour votre article' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Vous venez de supprimer votre article' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:fr_name, :en_name, :zh_name, :date, :content, :tags, :comment, theme_ids:[])
    end

    def author?
      @article = Article.find(params[:id])
      redirect_to "/articles" unless
      @article.author == current_author
    end
end
