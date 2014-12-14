require 'open-uri'
require 'addressable/uri'

class WelcomeController < ApplicationController
  def index
  end

  def translate
    source = params[:source]
    type = :plain

    if source.is_url?
      parsed = Addressable::URI.parse(source)
      is_pdf = parsed.path.match /\.pdf$/i
      io = open source, 'rb'
      source = io.read

      if is_pdf
        reader = PDF::Reader.new io
        source = reader.pages.map(&:text).join("\n")
      else
        type = :url
      end
    end

    translated = source.clone
    from = params[:from]
    to = params[:to]
    sentinel = '⁐~⁐' # To prevent replacing a term's replacement

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
      to_term = to_term.split('').join(sentinel)

      translated.gsub! Regexp.new(from_term, Regexp::IGNORECASE), "\\1#{to_term}\\2"
    end

    # Remove the sentinel
    translated.gsub! sentinel, ''

    if request.xhr?
      render json: {
        :from => from,
        :to => to,
        :source => source,
        :translated => translated,
      }
    elsif type === :plain
      render html: '<pre>'.html_safe + translated
    elsif type === :url
      render html: translated.html_safe
    end
  end
end
