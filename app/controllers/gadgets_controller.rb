class GadgetsController < ApplicationController
	protect_from_forgery
	
	def index
			@gadgets = Gadget.all
	end
	
	def new
		@gadget = Gadget.new
	end

	def create
		@gadget = Gadget.new(title: params[:gadget][:title],
    method_or_gadget: params[:gadget][:method_or_gadget],
    useful_for: params[:gadget][:useful_for],
    analysis_group: params[:gadget][:analysis_group], 
    gadget_description: params[:gadget][:gadget_description], 
    cost: params[:gadget][:cost], 
    company_name: params[:gadget][:company_name], 
    company_description: params[:gadget][:company_description], 
    company_website: params[:gadget][:company_website], 
    technology_used: params[:gadget][:technology_used], 
    scientific_description: params[:gadget][:scientific_description], field_1_explanation: params[:gadget][:field_1_explanation], field_2_useful_for_which: params[:gadget][:field_2_useful_for_which], field_2_explanation: params[:gadget][:field_2_explanation], name: params[:gadget][:name], comment: params[:gadget][:comment])
    
    if @gadget.save
      flash[:notice] =  'User successfully created.' 
      redirect_to gadgets_path
    else
      flash[:error] =  'Problem creating user.' 
      render 'new'
    end
	end

	def edit
    @gadget = Gadget.find(params[:id])
      if !@gadget.nil?
        render 'edit'
      else
        render 'index'
      end
  end

	def update
    @gadget = Gadget.find(params[:id])

    @gadget.title = params[:gadget][:title]
    @gadget.company_name = params[:gadget][:company_name]
    @gadget.method_or_gadget = params[:gadget][:method_or_gadget]
    @gadget.useful_for = params[:gadget][:useful_for]
    @gadget.gadget_description = params[:gadget][:gadget_description]
    @gadget.cost = params[:gadget][:cost]
    @gadget.company_description = params[:gadget][:company_description]
    @gadget.company_website = params[:gadget][:company_website]
    
    if @gadget.save
      redirect_to gadgets_path
    else
      render 'edit'
    end
  end

	def show
		@show_gadget = Gadget.find(params[:id])
	end

  def destroy
    Gadget.find(params[:id]).destroy
    # redirect_to gadgets_path
    render 'gadgets_path'
  end

end
