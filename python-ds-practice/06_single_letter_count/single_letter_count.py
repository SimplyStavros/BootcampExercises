def single_letter_count(word, letter):
    """How many times does letter appear in word (case-insensitively)?
    
        >>> single_letter_count('Hello World', 'h')
        1
        
        >>> single_letter_count('Hello World', 'z')
        0
        
        >>> single_letter_count("Hello World", 'l')
        3
    """
    all_lower = word.lower()
    n = 0

    for letters in all_lower:
        if letters == letter.lower():
            n += 1
    return (n)
