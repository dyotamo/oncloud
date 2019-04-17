class CompanyController < ApplicationController
  def view
    @company = Company.find_by!(slug: params[:slug])
  end
end
