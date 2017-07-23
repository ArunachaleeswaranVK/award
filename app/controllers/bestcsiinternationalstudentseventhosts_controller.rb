class BestcsiinternationalstudentseventhostsController < ApplicationController
    
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    
    
    def index
        @bestcsiinternationalstudentseventhosts = Bestcsiinternationalstudentseventhost.all
    end
    
    def show
        
    end    
    
    def new
        @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.new
    end
    
    def create
        @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.new(bestcsiinternationalstudentseventhost_params)
        
        if @bestcsiinternationalstudentseventhost.save
            redirect_to @bestcsiinternationalstudentseventhost
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestcsiinternationalstudentseventhost.update(bestcsiinternationalstudentseventhost_params)
            redirect_to @bestcsiinternationalstudentseventhost
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestcsiinternationalstudentseventhost.destroy
        redirect_to bestcsiinternationalstudentseventhostes_path
    end
    
    private
    
    def bestcsiinternationalstudentseventhost_params
       params.require(:bestcsiinternationalstudentseventhost)
       .permit(:institution_membership_no,:validity,:name_of_the_institution,:postal_address,:city,:pin,:state,:phone_number,:emailID,
       :SBC_name,:SBC_designation,:SBC_department,:SBC_emailID,:SBC_phone_number,:Institution_membership_joining_date,
       :Institution_membership_valid_till,:no_of_csi_voulenteers,:no_of_csi_voulenteers_added)
    end
    
    def set_award
       @bestcsiinternationalstudentseventhost = bestcsiinternationalstudentseventhost.find(params[:id]) 
    end
end
