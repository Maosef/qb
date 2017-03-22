n_guesses = 50

clm {
  min_appearances = 2
}

mentions {
  min_appearances = 2
}

wikifier {
  min_appearances = 2
}

guessers "Experimental Dan" {
  class = "qanta.guesser.tf.dan.TFDan
  luigi_dependency = "qanta.pipeline.wiki_questions.SelectWikiQuestions"
  enabled = true
}

guessers "Dan" {
  class = "qanta.guesser.dan_tf.DANGuesser"
  luigi_dependency = "qanta.pipeline.guesser.dan.DANDependencies"
  enabled = false
}

guessers "Whoosh" {
  class = "qanta.guesser.whoosh.WhooshWikiGuesser"
  luigi_dependency = "qanta.pipeline.guesser.EmptyTask"
  enabled = false
}

guessers "AuxDan" {
  class = "qanta.guesser.dan.aux_dan.AuxDANGuesser"
  luigi_dependency = "qanta.pipeline.guesser.EmptyTask"
  enabled = false
}

guessers "ElasticSearch" {
  class = "qanta.guesser.elasticsearch.ElasticSearchGuesser"
  luigi_dependency = "qanta.pipeline.guesser.EmptyTask"
  enabled = false
}
