class FrontController < ApplicationController
  def home
  end

  def search
    @q = params[:q]
    redirect_to root_path if @q.nil? || @q.empty?
    @results = full_search(Company, @q, 10)
  end

  private

  def full_search(model, query, page_number)
    rs = model.none

    model.column_names.each do |column|
      rs = rs.or(model.where(column + " like ?", "%" + query + "%"))
    end

    rs.paginate(page: params[:page], per_page: page_number)
  end
end
