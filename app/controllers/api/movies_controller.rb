class Api::MoviesController < ApplicationController

  def index
    @movie = Movie.all 
    render 'index.json.jbuilder'
  end


  def show
    @movie = Movie.find(params[:id])
    render "show.json.jbuilder"
  end


  def create
    @movie = Movie.new(
    title: params[:title],
    year: params[:year],
    plot: params[:plot],
    english: params[:english],
    director: params[:director]
    )
    @movie.save
    render 'show.json.jbuilder'
  end


  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    @movie.director = params[:director] || @movie.director
    

    @movie.save
    render 'show.json.jbuilder'
  end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render "show.json.jbuilder" 
  end


end
