class MealTimesController < ApplicationController
  def index
    @meal_times = MealTime.all

    render("meal_times/index.html.erb")
  end

  def show
    @meal_time = MealTime.find(params[:id])

    render("meal_times/show.html.erb")
  end

  def new
    @meal_time = MealTime.new

    render("meal_times/new.html.erb")
  end

  def create
    @meal_time = MealTime.new

    @meal_time.time = params[:time]

    save_status = @meal_time.save

    if save_status == true
      redirect_to("/meal_times/#{@meal_time.id}", :notice => "Meal time created successfully.")
    else
      render("meal_times/new.html.erb")
    end
  end

  def edit
    @meal_time = MealTime.find(params[:id])

    render("meal_times/edit.html.erb")
  end

  def update
    @meal_time = MealTime.find(params[:id])

    @meal_time.time = params[:time]

    save_status = @meal_time.save

    if save_status == true
      redirect_to("/meal_times/#{@meal_time.id}", :notice => "Meal time updated successfully.")
    else
      render("meal_times/edit.html.erb")
    end
  end

  def destroy
    @meal_time = MealTime.find(params[:id])

    @meal_time.destroy

    if URI(request.referer).path == "/meal_times/#{@meal_time.id}"
      redirect_to("/", :notice => "Meal time deleted.")
    else
      redirect_to(:back, :notice => "Meal time deleted.")
    end
  end
end
