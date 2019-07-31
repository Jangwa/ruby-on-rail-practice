class TestApisController < ApplicationController
    skip_before_action :verify_authenticity_token
    def seeAll
        puts "=========params========================"
        puts params
        @taskList = Task.all
        render :json => {'calling': 'API - 1', 'params': params['a'], 'taskList': @taskList}
        puts "=========params========================"
    end
    def index
        puts "HITTING"
        render :json => {'working': true}
    end
    def createANewTask
        puts params
        @task_params = params.require(:task).permit(:title, :note, :completed)
        puts @title
        @task = Task.create(@task_params)
        render :json => {status: true}
    end
end
