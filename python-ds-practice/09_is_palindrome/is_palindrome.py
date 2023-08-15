def is_palindrome(phrase):
    """Is phrase a palindrome?

    Return True/False if phrase is a palindrome (same read backwards and
    forwards).

        >>> is_palindrome('tacocat')
        True

        >>> is_palindrome('noon')
        True

        >>> is_palindrome('robert')
        False

    Should ignore capitalization/spaces when deciding:

        >>> is_palindrome('taco cat')
        True

        >>> is_palindrome('Noon')
        True
    """

    list = []
    reverse_list = []
    reverse_phrase = phrase[::-1]

    for letter in phrase:
        if letter != ' ':
            list.append(letter.lower())
    
    for letter in reverse_phrase:
        if letter != ' ':
            reverse_list.append(letter.lower())

    if list == reverse_list:
        return True
    else:
        return False