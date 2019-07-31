class PagesController < ApplicationController
    def home
        puts "HIT"
        @tasks = Task.all
        # render :json => @tasks 
        #   If you Dont define explicit Render,
        #   Rail will find the default view for it and will chose to render that 
    end
end
