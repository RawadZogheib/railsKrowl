module Api
    module V1
      class SlacksController < ApplicationController
      

        def index
          slack_params
        end

        def create
          #slack_params ############# NETLA2AAAAAAAA JSON FILE ############
           
          puts "sadasdassdfdsfsdfsdfdsfsdfsdfdsfdfdsfd "
          puts params[:textField]
          puts params[:bati]
          
          SendSlackNotificationJob.perform_later(params[:textField] + " test test test " + params[:bati]);
        end
     
        
        private
           
            # Only allow a list of trusted parameters through.
            #def slack_params
              # puts "sadasdassdfdsfsdfsdfdsfsdfsdfdsfdfdsfd "
              # puts params[:textField]
              # puts params[:bati]
              #params.require(:slack).permit(:textFeild)
              # information = request.raw_post
              # data_parsed = JSON.parse(information)
              # @test1 = data_parsed.textFeild
              # puts "sadasdassdfdsfsdfsdfdsfsdfsdfdsfdfdsfd "
              # puts @test1
            #end
        
        
        end
    end
end



