class ThesesController < ApplicationController
	before_filter :filter_logged_in, :filter_red_hat_leader, { except: [:index, :show] }

	Types = [
		[Thesis::Type[:bachelor][:string], Thesis::Type[:bachelor][:id]],
		[Thesis::Type[:master][:string], Thesis::Type[:master][:id]],
		[Thesis::Type[:bachelor_or_master][:string], Thesis::Type[:bachelor_or_master][:id]],
	]

	Statuses = [
		[Thesis::Status[:available][:string], Thesis::Status[:available][:id]],
		[Thesis::Status[:occupied][:string], Thesis::Status[:occupied][:id]],
		[Thesis::Status[:finished][:string], Thesis::Status[:finished][:id]],
	]

	def index
		@theses = Thesis.all()
	end

	def show
		@thesis = Thesis.find(params[:id])
		@description = RedCloth.new(@thesis.description()).to_html()
	end

	def new
		@thesis = Thesis.new()
		@types = Types
		@statuses = Statuses
	end

	def create
		@thesis = Thesis.new(params[:thesis])

		if @thesis.save
			flash[:success] = [t('theses.create.success')]
			redirect_to(theses_path())
		else
			flash.now[:error] = [t('theses.create.failure')]
			@thesis.errors.full_messages.each { |e| flash.now[:error] << e }
			@types = Types
			@statuses = Statuses
			render(new_thesis_path())
		end
	end

	def edit
		@thesis = Thesis.find(params[:id])
	end

	def update
		@thesis = Thesis.find(params[:id])

		if @thesis.update_attributes(params[:thesis])
			flash[:success] = [t('theses.update.success')]
			redirect_to(thesis_path(@thesis))
		else
			flash.now[:error] = [t('theses.update.failure')]
			render(edit_thesis_path(@thesis))
		end
	end

	def destroy
		@thesis = Thesis.find(params[:id])

		@thesis.destroy()

		if @thesis.destroyed?()
			flash[:success] = [t('theses.destroy.success')]
		else
			flash[:error] = [t('theses.destroy.failure')]
		end

		redirect_to(theses_url())
	end
end
