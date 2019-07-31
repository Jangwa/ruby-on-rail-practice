class TasksController < ApplicationController
    def new
        @task = Task.new
    end
    def create
        @task = Task.create(task_params)
        return 0
    end
    def task_params
        puts "+====================="
        puts params
        puts "+====================="
        params.require(:task).permit(:title, :note, :completed)
    end
end
