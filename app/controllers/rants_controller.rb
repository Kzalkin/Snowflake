class RantsController < ApplicationController
    def index
        @rants = Rant.all
    end

    def show
        @rant = Rant.find(params[:id])
    end

    def new
        @rant = Rant.new
    end

    def create
        @rant = Rant.new(params.require(:rant).permit(:title, :author, :body))

        if @rant.save
            redirect_to @rant
        else
            render :new
        end
    end

    def edit
        @rant = Rant.find(params[:id])
    end

    def update
        @rant = Rant.find(params[:id])

        if @rant.update(params.require(:rant).permit(:title, :author, :body))
            redirect_to @rant
        else
            render :edit
        end
    end

    def destroy
        @rant = Rant.find(params[:id])
        @rant.destroy
        redirect_to rants_path
    end
end
