class WelcomeController < ApplicationController
  def index
  end

  def translate
    @english = params[:eng]
    @american = @english

    Term.all.each do |term|
      @american.gsub! Regexp.new(term.english, Regexp::IGNORECASE), term.american
    end

    render plain: @american
  end
end
