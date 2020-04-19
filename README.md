# Nouns in a bucket

This is the game Nouns in a Bucket (or something like that).

## Todo

Proposed schema:

### users
- email: :string

### game
- friendly_name: :string

### teams
- game_id: :ref
- name: :string
- turn_order: :json
- current_player: :ref
- current_round: :int

###guesses
- game_id: :ref
- word_id: :ref
- player_id: :ref
- round: :int

### players
- team_id: :ref
- user_id: :ref

### words
- word: :string
- player_id: :ref
