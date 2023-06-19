class ClubsController < ApplicationController
    def index
      @clubs = Club.all
    end

    def inscription
      @club = Club.find(params[:id])
      @inscription = Inscription.new
    end

    def create_inscription
      @club = Club.find(params[:id])
      @inscription = Inscription.new(inscription_params.merge(club: @club))
      if @inscription.save
        redirect_to root_path, notice: 'Inscription enregistrée.'
      else
        render :inscription
      end
    end
    private
    def inscription_params
      params.require(:inscription).permit(:club_name, :name, :age, :email, :phone)
    end
  end