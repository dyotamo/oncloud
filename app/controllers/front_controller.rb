class FrontController < ApplicationController
  def search
    q = params[:q]

    # Sanitize
    @q = q.strip if !q.nil?

    redirect_to root_path if @q.empty?
    @results = full_search(Company, @q, 10)
  end

  private

  def full_search(model, query, page_number)
    rs = model.none

    # Evaluate the query time
    @exc = Benchmark.measure {
        rs = model.where("description like ?", "%" + query + "%")
    }

    rs.paginate(page: params[:page], per_page: page_number)
  end
end
