class TasksController < ApplicationController
    before_action :login_required

    def index
        
    end

    def new
      @task = Task.new
    end

    def create

    end

    private

    def login_required
        redirect_to login_path unless logged_in?
    end
    
end
