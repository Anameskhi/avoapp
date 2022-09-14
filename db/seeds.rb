# frozen_string_literal: true

author1 = Author.create(first_name: 'Maye', last_name: 'Musk', email: 'Maye@gmail.com')
author2 = Author.create(first_name: ' Philip', last_name: 'Roth', email: 'Philip@gmail.com')
author3 = Author.create(first_name: 'Mark', last_name: 'Twain', email: 'Mark@gmail.com')
book1 = Book.create(title: 'A Woman Makes a Plan', author_id: author1.id)
book2 = Book.create(title: 'Letting Go', author_id: author2.id)
book3 = Book.create(title: 'The Adventures of Tom Sawyer', author_id: author3.id)
book4 = Book.create(title: 'Feel Fantastic', author_id: author1.id)
