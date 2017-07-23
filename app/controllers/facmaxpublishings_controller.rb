class FacmaxpublishingsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    
    
    def index
        @facmaxpublishings = Facmaxpublishing.all
    end
    
    def show
        
    end    
    
    def new
        @facmaxpublishing = Facmaxpublishing.new
    end
    
    def create
        @facmaxpublishing = Facmaxpublishing.new(facmaxpublishing_params)
        
        if @facmaxpublishing.save
            redirect_to @facmaxpublishing
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @facmaxpublishing.update(facmaxpublishing_params)
            redirect_to @facmaxpublishing
        else
            render "edit"
        end    
    end
    
    def destroy
        @facmaxpublishing.destroy
        redirect_to facmaxpublishinges_path
    end
    
    private
    
    def facmaxpublishing_params
       params.require(:facmaxpublishing)
       .permit(:name_of_faculty,:name_of_the_institution,
       :postal_address,:city,:pin,:state,:phone_number,:emailID,
       :name_of_head_of_institution,:designation,:head_of_institution_emailID,:candidate_emailID,
       :Institution_membership_number,
       :Institution_membership_valid_till,:candidate_csi_membership_number,
       :candidate_csi_membership_number_valid_till,:institution_has_student_branch)
    end
    
    def set_award
       @facmaxpublishing = facmaxpublishing.find(params[:id]) 
    end
end
