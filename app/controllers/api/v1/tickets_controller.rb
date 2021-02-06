class Api::V1::TicketsController < ApplicationController
    def index
        tickets = Ticket.all
        render json: tickets 
    end

    def create 
        ticket = Ticket.new(ticket_params)
        if ticket.save 
            render json: ticket, status: :accepted   
        else
            render json: {errors: ticket.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 
    def ticket_params
        params.require(:ticket).permit(:title, :date, :main_act, :category_id)
    end
end
