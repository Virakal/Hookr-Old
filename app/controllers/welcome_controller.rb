class WelcomeController < ApplicationController
  def index
  end

  def translate
    source = params[:source]
    translated = source.clone
    from = params[:from]
    to = params[:to]
    sentinel = "⁐~⁐" # To prevent replacing a term's replacement

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

      from_term = "([[:blank:][:punct:]]|^)#{from_term}([[:blank:][:punct:]]|$)"
      to_term = "#{sentinel}#{to_term}#{sentinel}"

      translated.gsub! Regexp.new(from_term, Regexp::IGNORECASE), "\\1#{to_term}\\2"
    end

    # Remove the sentinel
    translated.gsub! Regexp.new(sentinel), ''

    if request.xhr?
      render json: {
        :from => from,
        :to => to,
        :source => source,
        :translated => translated,
      }
    else
      render plain: translated
    end
  end
end
