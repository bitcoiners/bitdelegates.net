module Refinery
  module Dacs
    module Admin
      class DacsController < ::Refinery::AdminController

        crudify :'refinery/dacs/dac',
                :title_attribute => 'name',
                :xhr_paging => true

	private
	    # Using a private method to encapsulate the permissible parameters is
	    # just a good pattern since you'll be able to reuse the same permit
	    # list between create and update. Also, you can specialize this method
	    # with per-user checking of permissible attributes.
	    def dac_params
	      params.require(:dac).permit(:name, :description)
	    end

      end
    end
  end
end
