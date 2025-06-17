word=input("enter a word")
if len(word) >=3:
          if word[:-3]=="ing":
                  word=word+"ly"
          else:
                  word=word+"ing"
print ("change the word:",word)                          

