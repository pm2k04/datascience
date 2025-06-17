lst_vehicle=['cars','bike','truck']
print(lst_vehicle[1:2])
lst_cars_type=['cars',['bmw','honda','hondai']]
print("lst_cars_type",)
for i in lst_vehicle:
          if isinstance(i,list):
                    print(f"{lst_cars_type} contain list{i}")
                    break
          else:
                  print(f"{lst_cars_type}dosen't comnain list")
          
            


