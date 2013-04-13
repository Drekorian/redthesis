class SectionsController < ApplicationController
	before_filter :filter_logged_in, :filter_admin, { except: [:show] }

	def index
		@sections = Section.all.sort_alphabetical_by { |section| section.name.downcase }
	end

	def show
		@section = Section.find(params[:id])
	end

	def default
		@section = Section.new({ name: t('.sections.default.default_section') })
		@section.theses = Thesis.find_all_by_section_id(nil)
		render :show
	end

	def new
		@section = Section.new()
	end

	def create
		@section = Section.new(params[:section])

		if @section.save
		    flash[:success] = [t('sections.create.success')]
			redirect_to(sections_path())
		else
			flash.now[:success] = [t('sections.create.failure')]
			render(new_section_path(@section))
		end
	end

	def edit
		@section = Section.find(params[:id])
	end

	def update
		@section = Section.find(params[:id])

		if @section.update_attributes(params[:section])
			flash[:success] = [t('sections.update.success')]
			redirect_to(sections_path())
		else
			flash.now[:error] = [t('sections.update.failure')]
			render(edit_section_path(@section))
		end
	end

	def destroy
		@section = Section.find(params[:id])

		@section.destroy()

		if @section.destroyed?
			flash[:success] = [t('sections.destroy.success')]
		else
			flash[:error] = [t('sections.destroy.failure')]
		end

		redirect_to(sections_path())
	end
end
