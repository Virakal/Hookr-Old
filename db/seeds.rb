# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Term.create english: "double crochet", american: "single crochet"
Term.create english: "dc", american: "sc"
Term.create english: "half treble", american: "half double crochet"
Term.create english: "htr", american: "hdc"
Term.create english: "treble", american: "double crochet"
Term.create english: "tr", american: "dc"
Term.create english: "double treble", american: "treble"
Term.create english: "dtr", american: "tr"
Term.create english: "triple treble", american: "double treble"
Term.create english: "trtr", american: "dtr"
Term.create english: "miss", american: "skip"
Term.create english: "tension", american: "gauge"
Term.create english: "yarn over hook", american: "yarn over"
Term.create english: "yoh", american: "yo"
