# Create an empty list called my_list
my_list = []

# Append the following elements to the list: 10, 20, 30, 40

my_list.append(10)
my_list.append(20)
my_list.append(30)
my_list.append(40)

# Insert the value 15 at the second position in the list
my_list.insert(1, 15)

# Extend the list with the values [50, 60, 70)
my_list.extend([50, 60, 70])

# Remove the last element from the list
my_list.pop()

# Sort the list in ascending order
my_list.sort()

# Find and print the index of the value 30 in the list
index_of_30 = my_list.index(30)
print("Index of 30 in the list:", my_list.index(30))

# Print the list to see final results

print("The final list is:", my_list)