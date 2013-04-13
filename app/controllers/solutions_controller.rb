class SolutionsController < ApplicationController
	before_filter :filter_logged_in, :filter_university_leader

	def index
		if session[:user].admin?
			@solutions = Solution.all.sort_alphabetical_by() { |s| s.thesis.name }
		elsif
			@solutions = Solution.where(university_leader_id: session[:user].id).sort_alphabetical_by() { |solution| solution.thesis.name }
		end
	end

	def show
		@solution = Solution.find(params[:id])
	end

	def new
		@solution = Solution.new()
		prepare_new()
	end

	def create
		@solution = Solution.new()

		if @solution.update_attributes(params[:solution])
			flash[:success] = [t('solutions.create.success')]
			redirect_to solution_path(@solution)
		else
			flash[:error] = [t('solutions.create.failure')]
			prepare_new()
			render new_solution_path()
		end
	end

	def edit
		@solution = Solution.find(params[:id])
	end

	def update
		@solution = Solution.find(params[:id])

	    if @solution.update_attributes(params[:solution])
			flash[:success] = [t('solutions.update.success')]
			redirect_to(solution_path(@solution))
		else
			flash.now[:error] = [t('solutions.update.failure')]
			flash.now[:error] += @solution.errors.full_messages
			render(edit_user_path(@user))
		end
	end

	def destroy
		@solution = Solution.find(params[:solution])

		@solution.destroy

		if @solution.destroyed?
			flash[:success] = [t('solutions.destroy.success')]
			redirect_to(solutions_path())
		else
			flash[:error] = [t('solutions.destroy.failure')]
			redirect_to(solutions_path())
		end
	end

private

	def prepare_new
		if session[:user].admin?
			@theses = Thesis.all.sort_alphabetical_by(&:name).collect { |thesis| [thesis.name, thesis.id] }
			@students = User.find_all_by_user_type(User::Type[:student][:id]).collect() { |student| [student.full_name, student.id] }
			@university_leaders = User.find_all_by_user_type(User::Type[:university_leader][:id]).collect() { |university_leader| [university_leader.full_name, university_leader.id] }
		elsif session[:user].university_leader?
			@theses = User.find(session[:user]).university.theses.collect() { |thesis| [thesis.name, thesis.id] }
			@students = User.where({ user_type: User::Type[:student][:id], university_id: session[:user].university.id }).collect() { |student| [student.full_name, student.id]}
		end
	end
end
