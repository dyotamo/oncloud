# by Dássone Dyotamo ...
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
    rs = []

    # Evaluate the query time
    @exc = Benchmark.measure {
      model.column_names.each do |column|
        # rs.concat(model.where(column + " like ?", "%" + query + "%"))
      end

      # Casting the array into relation
      rs = model.all
    }

    rs.paginate(page: params[:page], per_page: page_number)
  end
end
