class UsersController < ApplicationController
	Types = [
		[User::Type[:admin][:string], User::Type[:admin][:id]],
		[User::Type[:red_hat_leader][:string], User::Type[:red_hat_leader][:id]],
		[User::Type[:university_leader][:string], User::Type[:university_leader][:id]],
		[User::Type[:student][:string], User::Type[:student][:id]]
	]

	def index
		@users = User.all.sort_alphabetical_by(&:last_name)
	end

	def show
		@user = User.find(params[:id])
		@theses_lead = @user.theses_lead
	rescue ActiveRecord::RecordNotFound # TODO: add this to all controller actions
		flash[:error] = [t('.users.show.not_found')]
		redirect_to(users_path())
	end

	def new
		@user = User.new()
		@types = UsersController::Types
		@universities = University.all.collect() { |university| [university.name, university.id] }
	end

	def new_student
		@user = User.new({ user_type: User::Type[:student][:id] })
	end

	def create
		@user = User.new(params[:user])

		if @user.password.nil?
			@user.password = @user.email
		end

		if @user.save()
			flash[:success] = [t('.users.create.success')]
			redirect_to(user_path(@user))
		else
			flash.now[:error] = [t('.users.create.failure')]
			flash.now[:error] += @user.errors.full_messages
			@types = UsersController::Types
			render(new_user_path())
		end
	end

	def edit
		@user = User.find(params[:id])
		@types = UsersController::Types
	end

	def update
		@user = User.find(params[:id])

		if params[:user][:middle_names] && params[:user][:middle_names].empty?
			params[:user][:middle_names] = nil
		end

		if @user.update_attributes(params[:user])
			flash[:success] = [t('.users.update.success')]
			redirect_to(user_path(@user))
		else
			flash.now[:error] = [t('.users.update.failure')]
			render(edit_user_path(@user))
		end
	end

	def destroy
		@user = User.find(params[:id])

		@user.destroy

		if @user.destroyed?
			flash[:success] = [t('.users.destroy.success')]
			redirect_to(users_path())
		else
			flash[:error] = [t('users.destroy.failure')]
			redirect_to(users_path)
		end
	end
end
