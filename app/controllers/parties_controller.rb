class PartiesController < ApplicationController
    before_action :find_party, only: [:show, :update]

    def index
        parties = Party.includes(:cats)
        render json: parties, include: :cats
    end
    
    def show
        render json: @party, include: :cats
    end

    def create
        @party = Party.create(
            title: params[:title],
            theme: params[:theme]
        )
        if params[:cat_id]
            cat = Cat.find(params[:cat_id])
            CatParty.create(cat: cat, party: @party)
            # cat.parties << @party
        end

        render json: @party
    end

    def update
        @party.update(
            title: params[:title],
            theme: params[:theme]
        )

        render json: @party
    end

    def destroy
        party = Party.find(params[:id])
        party.destroy
        render json: "Your party has been removed!"
    end

    private

    def find_party
        @party = Party.find(params[:id])
    end
end


