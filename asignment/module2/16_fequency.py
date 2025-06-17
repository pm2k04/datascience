def count_frequencies(lst):

          fequency_dict = {}
          for item in lst:
                      if item in fequency_dict:
                              fequency_dict[item] += 1
                      else:
                              fequency_dict[item] = 1
          return fequency_dict
my_list=[1,2,2,3,4,4,4,5,5,6]
frequencies = count_frequencies(my_list)
print(frequencies)
