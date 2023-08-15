"""Word Finder: finds random words from a dictionary."""

import random

class WordFinder:
    """Device for finding random words from a dictionary"""

    def __init__(self, path):
        """Reports number of words in dictionary"""
        list_file = open(path)

        self.words = self.parse(list_file)

        print(f"{len(self.words)} words read!")

    def parse(self, list_file):
        """Parse file then list words"""
        return [d.strip() for d in list_file]
    
    def random(self):
        """Chooses random word"""
        return random.choice(self.words)
    
class FocusedWordFinder(WordFinder):
    """Word Finder that doesn't pull blank lines or comments"""

    def parse(self, list_file):
        """Parse file and lists words while skipping blanks/comments"""

        return [d.strip() for d in list_file if d.strip() and not d.startswith("#")]