competition_type = 'playoff'

record_games = True
stderr_to_log = True

players = {
    'mmcts' : Player('./mmcts_katago.sh'),
    'orig': Player('./orig_katago.sh'),
}

board_size = 9
komi = 5.5

matchups = [
    Matchup('mmcts', 'orig', scorer='players', number_of_games=NUM_GAMES, alternating=True),
]