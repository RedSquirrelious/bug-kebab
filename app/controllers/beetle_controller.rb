class BeetleController < ApplicationController
  def index
    @beetles = Beetle.all
  end

  def new
    @beetle = Beetle.new
  end

  def create
    @params = params
    @title = params[:beetle][:name]
    @description = params[:beetle][:description]

    @beetle = Beetle.new(name: @title, description: @description)
    # redirect_to root_path


    # @beetle = Beetle.new
    if @beetle.save
      redirect_to root_path
    else
      @error = "Did not save successfully. Try again."
      render :new
    end
  end

  def show
  end

  def destroy    
    @beetle = Beetle.find_by(params[:id])
    @beetle.destroy
    redirect_to root_path

  end

  def edit
  end

  def update
  end
end
