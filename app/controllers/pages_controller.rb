class PagesController < ApplicationController
    def home
        puts "Honey, I'm home!"
        @tasks = Task.all
    end
end
