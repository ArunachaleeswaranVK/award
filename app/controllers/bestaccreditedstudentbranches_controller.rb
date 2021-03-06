class BestaccreditedstudentbranchesController < ApplicationController
    
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    before_action :authenticate_user!, except: [:show]
    
    def getname
        @bestaccreditedstudentbranch = Bestaccreditedstudentbranch.where(institution_membership_no: params[:institution_membership_no]).first
    end
    
    def index
        @bestaccreditedstudentbranches = Bestaccreditedstudentbranch.all
    end
    
    def show
        
    end    
    
    def new
        @bestaccreditedstudentbranch = Bestaccreditedstudentbranch.new
    end
    
    def create
        @bestaccreditedstudentbranch = Bestaccreditedstudentbranch.new(bestaccreditedstudentbranch_params)
        
        if @bestaccreditedstudentbranch.save
            flash[:notice] = " Your response has been recorded"
            redirect_to @bestaccreditedstudentbranch
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestaccreditedstudentbranch.update(bestaccreditedstudentbranch_params)
            flash[:notice] = "Your response has been modified"
            redirect_to @bestaccreditedstudentbranch
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestaccreditedstudentbranch.destroy
        flash[:notice] = "Your response has been deleted"
        redirect_to root_path
    end
    
    private
    
    def bestaccreditedstudentbranch_params
       params.require(:bestaccreditedstudentbranch)
       .permit(:institution_membership_no,:name_of_the_institution,:postal_address,:city,:pin,:state,:phone_number,:emailID,
       :SBC_name,:SBC_designation,:SBC_department,:SBC_emailID,:SBC_phone_number,:SBC_CSI_membership_no,
       :no_of_csi_voulenteers,:no_of_csi_voulenteers_added)
    end
    
    def set_award
       @bestaccreditedstudentbranch = Bestaccreditedstudentbranch.find(params[:id]) 
    end 
end
