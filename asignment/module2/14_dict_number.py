dict_number={'prince':1,'yesh':4,'sachin':3,'raj':2,'sagar':5}
top_3=[]
for i  in dict_number.values():
    if len(top_3) < 3:
          top_3.append((i))
else:
          if i > min(top_3):
                    top_3[top_3.index(min(top_3))]=i
                    top_3.sort(reverse=True)
          print(top_3)                      
