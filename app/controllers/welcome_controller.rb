class WelcomeController < ApplicationController
  def index
  end

  def translate
    source = params[:source]
    translated = source.clone
    from = params[:from]
    to = params[:to]

    case from
    when 'British' then from_property = :english
    when 'American' then from_property = :american
    end

    case to
    when 'British' then to_property = :english
    when 'American' then to_property = :american
    end

    Term.all.each do |term|
      from_term = term.send from_property
      to_term = term.send to_property
      translated.gsub! Regexp.new(from_term, Regexp::IGNORECASE), to_term
    end

    render json: {
      :from => from,
      :to => to,
      :source => source,
      :translated => translated,
    }
  end
end
