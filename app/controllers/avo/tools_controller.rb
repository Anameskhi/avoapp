# frozen_string_literal: true

module Avo
  class ToolsController < Avo::ApplicationController
    def dashboard
      @page_title = 'Dashboard'
      add_breadcrumb 'Dashboard'
    end
  end
end
