## Coursera Data Science Capstone Project
This word prediction application was created in partial fulfillment of the requirements of the **Coursera Data Science Capstone**. 

### Approach
The application employs an algorithm that implements a 5-gram model with "stupid backoff". The algorithm makes use of five pre-generated 
tables that are essentially n-gram tables with pre-calculated "S" (or count) values tabulated by each potential next word. 
Upon invoking the app the five tables are read into memory. When the user enters a text string, the app searches for matches to the string and 
matches to subsets of it (e.g., the last 1, 2, and 3 words in a 4 word string) in the appropriate tables for the number of words in the string.
Matches from each table are assembled into one data frame, which is ranked by decreasing S value.
The word with the highest S value is returned as the "next word". The top five ranked words are also displayed in boxplot format.

### N-gram tables
The five lookup tables were generated from a corpus comprising 30% of the combined twitter, blog, and news text files. To limit the size
of the files, only N-grams with counts of more than three were retained.