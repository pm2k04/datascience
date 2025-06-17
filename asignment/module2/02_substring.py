def count_substring(main_string, sub_string):
    count = main_string.count(sub_string)
    return count
if __name__ == "__main__":
    main_string = input("Enter the main string: ")
    sub_string = input("Enter the substring to count: ")
    
print(f"the substring{sub_string}occurs{ main_string}time(s)in mainstring")   


