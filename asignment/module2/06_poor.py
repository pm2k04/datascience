
text = input("Enter a string: ")
not_index = text.find('not')
poor_index = text.find('poor')

if not_index != -1 and poor_index != -1 and not_index < poor_index:
    
    result = text[:not_index] + 'good' + text[poor_index + 4:]
else:
    
    result = text


print("Result:", result)

