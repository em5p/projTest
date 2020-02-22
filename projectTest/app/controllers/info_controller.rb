class InfoController < ApplicationController
    def new
        @info = Info.new
        @infos = Info.find(:all)
    end

    def create
        @info = Info.new(params[:info])
        if @info.save
            redirect_to new_student_path
         end
    end
end