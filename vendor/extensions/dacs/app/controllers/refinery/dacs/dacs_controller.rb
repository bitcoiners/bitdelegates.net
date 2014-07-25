module Refinery
  module Dacs
    class DacsController < ::ApplicationController

      before_filter :find_all_dacs
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @dac in the line below:
        present(@page)
      end

      def show
        @dac = Dac.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @dac in the line below:
        present(@page)
      end

    protected

      def find_all_dacs
        @dacs = Dac.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/dacs").first
      end

    end
  end
end
