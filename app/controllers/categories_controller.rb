class CategoriesController < ApplicationController
    # find category by its id, and also the pages associated with that category
    def show
        @category = Category.includes(:pages).find params[:id]
    end
end