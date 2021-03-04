class CompaniesController < ApplicationController
  def index
    @companies = Company.all.sort_by(&:count_contacts).reverse
  end

  def show
    @company = Company.find(params[:id])
    @people = Person.where(company_id: @company.id )
  end
end
