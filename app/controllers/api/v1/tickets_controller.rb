class Api::V1::TicketsController < ApplicationController
    def index
        tickets = Ticket.all
        # options = {
        #     include: [:category]
        # }
        render json: TicketSerializer.new(tickets) 
    end

    def create 
        ticket = Ticket.new(ticket_params)
        if ticket.save 
            render json: TicketSerializer.new(ticket), status: :accepted   
        else
            byebug 
            render json: {errors: ticket.errors.full_messages}, status: :unprocessible_entity
        end
    end

    # def edit 
    #     ticket = TicketSerializer.find_by(id)
    # end

    # def update 
    #     ticket = TicketSerializer.find_by(id)
    #     if ticket.update(ticket_params)
    #         render json: TicketSerializer.new(ticket), status: :accepted
    #     else
    #         render json: {errors: ticket.errors.full_messages}, status: :unprocessible_entity
    #     end
    # end

    private 

    def ticket_params
        params.require(:ticket).permit(:title, :date, :main_act, :category_id)
    end
end
