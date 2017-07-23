class HighestsponsorshipofcsieventsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    
    
    def index
        @highestsponsorshipofcsievents = Highestsponsorshipofcsievent.all
    end
    
    def show
        
    end    
    
    def new
        @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.new
    end
    
    def create
        @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.new(highestsponsorshipofcsievent_params)
        
        if @highestsponsorshipofcsievent.save
            redirect_to @highestsponsorshipofcsievent
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @highestsponsorshipofcsievent.update(highestsponsorshipofcsievent_params)
            redirect_to @highestsponsorshipofcsievent
        else
            render "edit"
        end    
    end
    
    def destroy
        @highestsponsorshipofcsievent.destroy
        redirect_to highestsponsorshipofcsieventes_path
    end
    
    private
    
    def highestsponsorshipofcsievent_params
       params.require(:highestsponsorshipofcsievent)
       .permit(:institution_membership_no,:validity,:name_of_the_institution,:postal_address,:city,:pin,:state,:phone_number,:emailID,
       :SBC_name,:SBC_designation,:SBC_department,:SBC_emailID,:SBC_phone_number,:Institution_membership_joining_date,
       :Institution_membership_valid_till,:no_of_csi_voulenteers,:no_of_csi_voulenteers_added)
    end
    
    def set_award
       @highestsponsorshipofcsievent = highestsponsorshipofcsievent.find(params[:id]) 
    end
end
