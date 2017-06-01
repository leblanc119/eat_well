class PlancontentsController < ApplicationController
  def index
    @plancontents = Plancontent.all

    render("plancontents/index.html.erb")
  end

  def show
    @plancontent = Plancontent.find(params[:id])

    render("plancontents/show.html.erb")
  end

  def new
    @plancontent = Plancontent.new

    render("plancontents/new.html.erb")
  end

  def create
    @plancontent = Plancontent.new

    @plancontent.mealtime_id = params[:mealtime_id]
    @plancontent.meal_id = params[:meal_id]

    save_status = @plancontent.save

    if save_status == true
      redirect_to("/plancontents/#{@plancontent.id}", :notice => "Plancontent created successfully.")
    else
      render("plancontents/new.html.erb")
    end
  end

  def edit
    @plancontent = Plancontent.find(params[:id])

    render("plancontents/edit.html.erb")
  end

  def update
    @plancontent = Plancontent.find(params[:id])

    @plancontent.mealtime_id = params[:mealtime_id]
    @plancontent.meal_id = params[:meal_id]

    save_status = @plancontent.save

    if save_status == true
      redirect_to("/plancontents/#{@plancontent.id}", :notice => "Plancontent updated successfully.")
    else
      render("plancontents/edit.html.erb")
    end
  end

  def destroy
    @plancontent = Plancontent.find(params[:id])

    @plancontent.destroy

    if URI(request.referer).path == "/plancontents/#{@plancontent.id}"
      redirect_to("/", :notice => "Plancontent deleted.")
    else
      redirect_to(:back, :notice => "Plancontent deleted.")
    end
  end
end
