class SauropsidsController < ApplicationController
		def index
		@sauropsids = Sauropsid.all
	end

	def show
		@sauropsid = Sauropsid.find(params[:id])
	end

	def new
		@sauropsid = Sauropsid.new
	end

	def create
		@sauropsid = Sauropsid.new(params.require(:sauropsid).permit(:order, :name, :age, :species, :location, :wingspan, :weight, :length))
		if @sauropsid.save
			redirect_to sauropsids_path
		else
			render 'new'
		end
	end

	def edit
		@sauropsid = Sauropsid.find(params[:id])
	end

	def update
		@sauropsid = Sauropsid.find(params[:id])
		if @sauropsid.update_attributes(params.require(:sauropsid).permit(:order, :name, :age, :species, :location, :wingspan, :weight, :length))
			redirect_to sauropsid_path
		else
			render 'edit'
		end
	end

	def destroy
		@sauropsid = Sauropsid.find(params[:id])
		@sauropsid.destroy
		redirect_to sauropsids_path
	end

	def pterosaur_index
		order_filter = params[:sauropsidfilter]
		@sauropsids = Sauropsid.where(:order => "pterosaur")
	end

	def ichthyosaur_index
		order_filter = params[:sauropsidfilter]
		@sauropsids = Sauropsid.where(:order => "ichthyosaur")
	end
end