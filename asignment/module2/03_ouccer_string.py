sentence = input("Enter the sentence: ")
words = sentence.split()
word_counts = {}
for word in words:
    word = word.lower()
    if word in word_counts:
        word_counts[word] += 1
    else:
        word_counts[word] = 1

for word, count in word_counts.items():
    print(f"'{word}' occurs {count} time(s)")
