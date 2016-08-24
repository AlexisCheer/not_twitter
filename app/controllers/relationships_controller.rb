class RelationshipsController < ApplicationController
    
    def created
       @relationship = current_user.relationships.build( friend_id: params [:friend_id]) 
       
       if @relationships.save
           flash[:notice] = "Followed succsefully"
           redirect_to profile_path(current_user.id)
        else
            flash[:notice] = "Unable to follow"
            redirect_to root_path
       end
    end
    
    private
    
    def relationships_params
        params.require(:relationships).permit(:user_id, :friend_id)
    end
end
