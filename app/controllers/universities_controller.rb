class UniversitiesController < ApplicationController
	before_filter :filter_logged_in, :filter_admin

	def index
		@universities = University.all.sort_alphabetical_by(&:name)
	end

	def new
		@university = University.new
	end

	def create
		@university = University.new(params[:university])

		if @university.save
			flash[:success] = [t('.universities.create.success')]
			redirect_to(universities_path)
		else
			flash.now[:error] = [t('.universities.create.failure')]
			render(new_university_path())
		end
	end

	def show
		@university = University.find(params[:id])
		@university_leaders = User.where(university_id: @university.id, user_type: User::Type[:university_leader][:id])
		@students = User.where(university_id: @university.id, user_type: User::Type[:student][:id])
	end

	def edit
		@university = University.find(params[:id])
	end

	def update
		@university = University.find(params[:id])

		if @university.update_attributes(params[:university])
			flash[:success] = [t('.universities.update.success')]
			redirect_to(universities_path())
		else
			flash.now[:error] = [t('.universities.update.failure')]
			render(edit_university_path())
		end
	end

	def destroy
		@university = University.find(params[:id])

		@university.destroy()

		if @university.destroyed?()
			flash[:success] = [t('.universities.destroy.success')]
		else
			flash[:error] = [t('.universities.destroy.failure')]
		end

		redirect_to(universities_path())
	end
end
