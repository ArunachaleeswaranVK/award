class LongestcontinuoussbcsController < ApplicationController
    
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    
    
    def index
        @longestcontinuoussbcs = Longestcontinuoussbc.all
    end
    
    def show
        
    end    
    
    def new
        @longestcontinuoussbc = Longestcontinuoussbc.new
    end
    
    def create
        @longestcontinuoussbc = Longestcontinuoussbc.new(longestcontinuoussbc_params)
        
        if @longestcontinuoussbc.save
            redirect_to @longestcontinuoussbc
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @longestcontinuoussbc.update(longestcontinuoussbc_params)
            redirect_to @longestcontinuoussbc
        else
            render "edit"
        end    
    end
    
    def destroy
        @longestcontinuoussbc.destroy
        redirect_to longestcontinuoussbces_path
    end
    
    private
    
    def longestcontinuoussbc_params
       params.require(:longestcontinuoussbc)
       .permit(:name_of_the_sbc_nominating_self,:institution_membership_no,:validity,:name_of_the_institution,:postal_address,:city,:pin,:state,:phone_number,:emailID,
       :name_of_head_of_institution,:SBC_designation,:head_of_institution_emailID,:SBC_emailID,:SBC_phone_number,:Institution_membership_number,
       :Institution_membership_valid_till,:candidate_csi_membership_number,
       :candidate_csi_membership_number_valid_till,:no_of_csi_voulenteers,:no_of_csi_voulenteers_added)
    end
    
    def set_award
       @longestcontinuoussbc = longestcontinuoussbc.find(params[:id]) 
    end
end


