def flip_case(phrase, to_swap):
    """Flip [to_swap] case each time it appears in phrase.

        >>> flip_case('Aaaahhh', 'a')
        'aAAAhhh'

        >>> flip_case('Aaaahhh', 'A')
        'aAAAhhh'

        >>> flip_case('Aaaahhh', 'h')
        'AaaaHHH'

    """
    upper = to_swap.upper()
    lower = to_swap.lower()
    new_case = ''
    for letter in phrase:
        if letter.isupper() and letter == upper:
            letter = lower
            new_case += letter
        elif letter.islower() and letter == lower:
            letter = upper
            new_case += letter
        else:
            new_case += letter
    return (new_case)
