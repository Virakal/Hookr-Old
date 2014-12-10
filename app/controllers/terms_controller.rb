class TermsController < ApplicationController
  def new
  end

  def create
    @term = Term.new(term_params)

    @term.save
    redirect_to @term
  end

  def show
    @term = Term.find(params[:id])
  end

  def index
    @terms = Term.all
  end

  private
    def term_params
      params.require(:term).permit(:english, :american)
    end
end
