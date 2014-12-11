class TermsController < ApplicationController
  def new
    @term = Term.new
  end

  def create
    @term = Term.new(term_params)

    if @term.save
      redirect_to @term
    else
      render 'new'
    end
  end

  def show
    @term = Term.find(params[:id])
  end

  def index
    @terms = Term.all
  end

  def edit
    @term = Term.find(params[:id])
  end

  def update
    @term = Term.find(params[:id])

    if @term.update(term_params)
      redirect_to @term
    else 
      render 'edit'
    end
  end

  def destroy
    @term = Term.find(params[:id])
    @term.destroy

    redirect_to terms_path
  end

  private
    def term_params
      params.require(:term).permit(:english, :american)
    end
end
