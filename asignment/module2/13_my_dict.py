my_dict={'prince':40,'yesh':55,'niraj':36,'raj':70}
items_list=list(my_dict.items())
for i in range(len(items_list)):
    for j in range(i + 1, len(items_list)):
        if items_list[i][1] > items_list[j][1]:
            items_list[i], items_list[j] = items_list[j], items_list[i]
ascending_dict={}
for item in items_list:
          ascending_dict[item[0]]=item[1]
          print(ascending_dict)
for i in range(len(items_list)):
    for j in range(i + 1, len(items_list)):
        if items_list[i][1] < items_list[j][1]:
            items_list[i], items_list[j] = items_list[j], items_list[i]
            descending_dict={}
for item in items_list:
          descending_dict[item[0]]=item[1]
          print(descending_dict)

