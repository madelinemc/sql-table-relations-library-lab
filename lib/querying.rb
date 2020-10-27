# -- series (id, title, author_id, subgenre_id)
# -- subgenres (id, name)
# -- authors (id, name)
# -- books (id, title, year, series_id)
# -- characters (id, name, motto, species, author_id)
# -- character_books (id, book_id, character_id)

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  JOIN series
  ON books.series_id = series.id
  WHERE series.id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(characters.motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS species_total
  FROM characters
  GROUP BY species
  ORDER BY species_total DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name AS author_name, subgenres.name AS subgenre_name
  FROM series
  INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id;
  "
end

def select_series_title_with_most_human_characters
  "SELECT title FROM (SELECT series.title, COUNT(characters.species)
  FROM series
  INNER JOIN characters
  ON series.author_id = characters.author_id
  WHERE characters.species = 'human'
  GROUP BY characters.species 
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1);"
end

def select_character_names_and_number_of_books_they_are_in #number of books descending, character names ascending
  "SELECT characters.name, COUNT(character_books.book_id) AS book_number FROM character_books
  JOIN characters
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY book_number DESC, characters.name ASC;"
end
