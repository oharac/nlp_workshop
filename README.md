# Intro to Natural Language Processing

Repository with code and materials for EcoDataScience on text analysis and natural language processing.

## Learning Outcomes

By the end of the session, you should be able to: 
  
* use the `synthesisr` package to read in and write out references in R
* Work with text data in a tidy workflow, using `tidytext`
* apply lemmatization to a corpus of documents to standardize words to their roots
* apply a TF-IDF calculation to a corpus of documents to get a sense of relative word importance
* apply a Latent Dirichlet Analysis to a corpus of documents to model topics within the corpus

It would be helpful, but not required, to have some prior knowledge of basic text analysis in R.  Materials for our EcoDataScience `tidytext` workshop would be a good place to start; they can be found here: https://github.com/ecodatascience/2024-02-14-tidytext.

## Helpful background

Words in a text carry meaning and information.  Natural language processing is a field of CS focused on processing natural language data, like text or speech, to extract information, make meaning, and possibly even generate new data as a response.  Early NLP was rule-based, like applying a dictionary and a grammar rulebook to parse text.  Probabilistic methods using machine learning were the next big development, and that's where we'll focus.  ChatGPT and other LLMs use insanely huge neural networks, a bit beyond our scope here!

For this workshop, we will use NLP to classify documents into similar categories, or "topics", based on similarities and differences among the various words found in the abstracts.

We will be considering a text as a "bag of words" model, which disregards word order and grammar.  This is way easier than trying to parse complex language, but clearly misses out on a lot of information!  However, for the topic modeling we're aiming for in this workshop, where we will classify documents according to their text content, it will work fine.

## Workshop prep

Install these packages, if not already installed: 

* `tidyverse`
* `tidytext`
* `synthesisr`
* `topicmodels`
* `ggwordcloud`
* `install.packages(c('tidyverse', 'tidytext', 'synthesisr', 'topicmodels', 'ggwordcloud'))`

Fork and clone the current repository for workshop materials and data.
 
## Data

We will be working with a bibliography exported from Web of Science, the results of five topic-level searches on April 19, 2024, using the terms __"social ecological system*" AND [topic]__ where [topic] is one of "fisher\*", "forestry", "grazing", "marine protected area", or ("water resource\*" OR "irrigation").  The searches returned 1066 unique documents with abstracts that we can use for our analysis.
