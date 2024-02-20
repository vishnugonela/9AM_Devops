Find the files equal to or greater than 10mb. # find / -type f -size +10M.
Find files that are greater than 10mb. # find / -type f -size +10M.
$ find . -mtime +10 -print
$ grep -E '^.{6}$' file.txt
awk '/^.{6}$/' file.txt 
awk '/^[[:alpha:]]{6}$/' file.txt
sed -n '/^.\{6\}$/p' file.txt
read -p "Enter First Name: " fname
echo "First Name is $fname"
read -t 10 -p "Enter Last Name: " lname

To read passwords from user without showing it on screen

read -s -p "Password: " password
echo "Your password is $password"
grep -o -i needs inspire.txt | wc -l

echo "Enter a String"
# Taking input from user
read text

# Counting words
word=$(echo -n "$text" | wc -w)
# Counting characters
char=$(echo -n "$text" | wc -c)

id Command to Find How Many Users are Logged In      id
This id command has produced all the user identifiers, group identifiers, and groups. If you want only a group identifier, use the below command.

id -G
This will print the group to which the specified user belongs. If no specific username is given, it will search for the current users. Use the below command
 for the current user.

groups

The getent command displays entries from the databases.
-i, --no-idn            disable IDN encoding
-s, --service=CONFIG    Service configuration to be used
-?, --help              Give this help list
--usage                 Give a short usage message
-V, --version           Print program version
 lslogins Command to Find How Many Users are Logged In
 
 
 
 The users command will print the usernames of logged-in to the current host.
 users
  who Command to Display who logged In
  w Command to Show the Logged In User
  last or lastb Command This provides all the login details of several users according to date and time.
   lastlog Command to Display Recent Login Users
   1)
    #syntax lslogins <option[=output field]>
    lslogins -o USER
    ;;
    2)
    #syntax who <option> <user optional>
    #grep used to filter
    who --count | grep users
    ;;
    3)
    #-q option is to count the number of users and print the logged-in users.
    # instead of -q, --count can also be used.
    # -v is used to exclude any pattern
    who -q | grep -v users
    ;;
    4)
    #syntax groups <option> [USERNAME]
    groups
    ;;
    *)
    echo -e "Please Enter Correct Input \n"
    ;; 
	
	#!/bin/sh

if [ "$1" != "${1#*[0-9].[0-9]}" ]; then
  echo IPv4
elif [ "$1" != "${1#*:[0-9a-fA-F]}" ]; then
  echo IPv6
else
  echo "Unrecognized IP format '$1'"
fi

You could check if the string contains a colon :, then it is an IPv6 address, otherwise it is an IPv4 addresss:

string='1.1.1.1';

if [[ $string =~ .*:.* ]]
then
  echo "IPv6"
else
  echo "IPv4"
fi



read -p "Enter your username: " username
is_valid_username() {
    # Using regex to check if the string contains only alphabetic characters
    if [[ $1 =~ ^[a-zA-Z]+$ ]]; then
        return 0
    else
        return 1
    fi
	
	
	
	echo "Please enter your username: "
read username

# Check if the username is empty
if [ -z "$username" ]; then
    echo "Error: Username cannot be empty."
    exit 1
fi

# Check if the username contains spaces
if [[ "$username" == *" "* ]]; then
    echo "Error: Username cannot contain spaces."
    exit 1
fi

# Check if the username is in uppercase
if [[ ! "$username" == *[[:lower:]]* ]]; then
    echo "Username is in uppercase and meets the requirements."
else
    echo "Error: Username must be in uppercase."
    exit 1
fi


#!/bin/bash

# Function to check if the password is alphanumeric
is_alphanumeric() {
    if [[ "$1" =~ ^[[:alnum:]]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Function to check if the password contains both upper and lower case characters
contains_upper_and_lower() {
    if [[ "$1" =~ [[:lower:]] && "$1" =~ [[:upper:]] ]]; then
        return 0
    else
        return 1
    fi
}
# Main function
main() {
    read -p "Enter username: " username
    read -s -p "Enter password: " password
    echo

    if is_alphanumeric "$password" && contains_upper_and_lower "$password"; then
        echo "Username and password accepted."
    else
        echo "Invalid password. Password must be alphanumeric and contain both upper and lower case characters."
    fi
}

# Main function
main() {
    read -p "Enter username: " username
    read -s -p "Enter password: " password
    echo

    if is_alphanumeric "$password" && contains_upper_and_lower "$password"; then
        echo "Username and password accepted."
    else
        echo "Invalid password. Password must be alphanumeric and contain both upper and lower case characters."
    fi
}

# Execute the main function
main
Here's a simple shell script that prompts the user for a directory path and a filename, then searches for that file within the specified directory:

echo "Enter the directory path:"
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found."
    exit 1
fi

# Prompt user for filename
echo "Enter the filename:"
read filename

# Search for the file
found_files=$(find "$directory" -type f -name "$filename")

# Check if file(s) found
if [ -z "$found_files" ]; then
    echo "File '$filename' not found in directory '$directory'."
else
    echo "File(s) found:"
    echo "$found_files"
fi


Certainly! Below is a simple shell script that takes a string as input and then loops over it based on the number of characters in the string:

bash
Copy code
#!/bin/bash

You can create a shell script that loops based on the number of files in the current directory using the find command to count the files and 
then looping accordingly. Here's a basic example in Bash:

bash
Copy code
#!/bin/bash

# Count the number of files in the current directory
file_count=$(find . -maxdepth 1 -type f | wc -l)

# Loop through each file in the directory
for ((i=1; i<=$file_count; i++))
do
    echo "Processing file $i"
    # Add your processing logic here
    # For example, you can perform operations on each file
done
Uses find . -maxdepth 1 -type f to find all files in the current directory (.) without descending into subdirectories (-maxdepth 1) and
 filters out only regular files (-type f).
Pipes the output to wc -l to count the number of lines, which corresponds to the number of files.
Loops from 1 to the total file count.
Within the loop, it echoes the current file being processed (you can replace this with your actual processing logic).
Make sure to make the script executable with chmod +x script_name.sh and then execute it with ./script_name.sh.

# Prompt user to input a string
echo "Enter a string:"
read input_string

# Get the length of the input string
string_length=${#input_string}

echo "Looping over the string '$input_string' $string_length times:"

# Loop from 1 to the length of the string
for ((i = 1; i <= string_length; i++)); do
    echo "Character at position $i: ${input_string:i-1:1}"
done

This script will call functions fun1, fun2, and fun3 from fun.sh script. Adjust the function calls in caller.sh and the function definitions in fun.sh
 as per your requirement.
Certainly! Below is an example of a shell script (caller.sh) that calls functions from another script (fun.sh):

bash
Copy code
#!/bin/bash

# Source the script containing the functions
source fun.sh

# Call the functions defined in fun.sh
fun1
fun2 "Hello World"
result=$(fun3 5 3)
echo "The result of fun3 is: $result"

And here is an example content for fun.sh:

bash
Copy code
#!/bin/bash

# Define some example functions
fun1() {
    echo "This is function 1"
}

fun2() {
    echo "This is function 2 with argument: $1"
}

fun3() {
    sum=$(($1 + $2))
    echo $sum
}

chmod +x caller.sh
chmod +x fun.sh
./caller.sh



Write a shell script to accept string from the user, then print numbers of characters count along with its letter
#!/bin/bash

# Accept string input from the user
echo "Enter a string: "
read input_string

# Calculate the length of the input string
length=${#input_string}

# Print the character count along with each letter
echo "Character count along with its letter:"
for ((i=0; i<${#input_string}; i++)); do
    # Extract each character from the input string
    char="${input_string:i:1}"
    # Count the occurrences of the current character
    count=$(grep -o "$char" <<< "$input_string" | wc -l)
    # Print the character and its count
    echo "$char : $count"
    # Remove all occurrences of the current character from the input string
    input_string="${input_string//$char/}"
done

#!/bin/bash

# Ask for the string
echo "Please enter a string:"
read input_string

# Remove duplicate characters
output_string=$(echo "$input_string" | tr -d '[:space:]
' | fold -w1 | sort -u | tr -d '\n')

echo "String after removing duplicates: $output_string"





shell script vishnu--->v i s h n u

for i in `echo $myvar | fold -w1`; do echo "myvar is $i"; done


Sure, here's a basic shell script that adds a string below a particular condition in a file within a repository.
 This script assumes you're using Git as your version control system.

bash
Copy code
#!/bin/bash

# Define the condition
condition="your_condition_here"

# Define the string to add
string_to_add="your_string_here"

# Define the file path within the repository
file_path="path_to_your_file"

# Check if the condition exists in the file
if grep -q "$condition" "$file_path"; then
    # Add the string below the condition
    sed -i "/$condition/a $string_to_add" "$file_path"
    echo "String added successfully below the condition."
else
    echo "Condition not found in the file."
fi




Here's a simple shell script that prompts the user for a directory path and a filename, then searches for that file within the specified directory:

bash
Copy code
#!/bin/bash

# Prompt the user for the directory path
read -p "Enter the directory path: " directory_path

# Prompt the user for the filename
read -p "Enter the filename: " filename

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Search for the file within the directory
found_file=$(find "$directory_path" -type f -name "$filename" 2>/dev/null)

# Check if the file was found
if [ -z "$found_file" ]; then
    echo "File '$filename' not found in directory '$directory_path'."
else
    echo "File '$filename' found at: $found_file"
fi




#!/bin/bash

# Prompt the user for the directory path
read -p "Enter the directory path (leave blank for default '/'): " directory_path

# If directory path is empty, set it to "/"
if [ -z "$directory_path" ]; then
    directory_path="/"
fi

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Prompt the user for the filename
read -p "Enter the filename: " filename

# Search for the file within the directory
found_file=$(find "$directory_path" -type f -name "$filename" 2>/dev/null)

# Check if the file was found
if [ -z "$found_file" ]; then
    echo "File '$filename' not found in directory '$directory_path'."
else
    echo "File '$filename' found at: $found_file"
fi



#!/bin/bash

# Specify the directory(s) to search for .java files
directories=(/path/to/your/directory1 /path/to/your/directory2)

# Function to filter files by modification date
filter_last_10_days() {
    file="$1"
    # Calculate the file's modification date in seconds since epoch
    file_modification=$(stat -c %Y "$file")
    # Calculate the current date in seconds since epoch
    current_date=$(date +%s)
    # Calculate the date 10 days ago in seconds since epoch
    ten_days_ago=$((current_date - (10 * 24 * 3600)))
    # Check if the file was modified within the last 10 days
    if [ "$file_modification" -gt "$ten_days_ago" ]; then
        return 0  # File was modified within the last 10 days
    else
        return 1  # File was not modified within the last 10 days
    fi
}

# Loop through each directory
for dir in "${directories[@]}"; do
    # Check if the directory exists
    if [ -d "$dir" ]; then
        # Find all .java files in the directory
        java_files=$(find "$dir" -name "*.java")
        # Initialize a counter for the number of files found
        count=0
        # Loop through each .java file
        for file in $java_files; do
            # Increment the count
            ((count++))
            # Check if the file was modified within the last 10 days
            if filter_last_10_days "$file"; then
                echo "$file"
            fi
        done
        # Display the count of files found in the directory
        echo "Files found in $dir: $count"
    else
        echo "Directory $dir not found."
    fi
done



Replace /path/to/your/directory1, /path/to/your/directory2, etc., with the actual directories you want to search for .java files




To delete files that were modified within the last 10 days, you can modify the script as follows:

bash
Copy code
#!/bin/bash

# Specify the directory(s) to search for .java files
directories=(/path/to/your/directory1 /path/to/your/directory2)

# Function to delete files modified within the last 10 days
delete_files_last_10_days() {
    file="$1"
    # Calculate the file's modification date in seconds since epoch
    file_modification=$(stat -c %Y "$file")
    # Calculate the current date in seconds since epoch
    current_date=$(date +%s)
    # Calculate the date 10 days ago in seconds since epoch
    ten_days_ago=$((current_date - (10 * 24 * 3600)))
    # Check if the file was modified within the last 10 days
    if [ "$file_modification" -gt "$ten_days_ago" ]; then
        # Delete the file
        rm "$file"
        echo "Deleted: $file"
    fi
}

# Loop through each directory
for dir in "${directories[@]}"; do
    # Check if the directory exists
    if [ -d "$dir" ]; then
        # Find all .java files in the directory
        java_files=$(find "$dir" -name "*.java")
        # Loop through each .java file
        for file in $java_files; do
            # Check if the file was modified within the last 10 days and delete it
            delete_files_last_10_days "$file"
        done
    else
        echo "Directory $dir not found."
    fi
done



Certainly! Here's a shell script that loops based on the number of characters in a string:

bash
Copy code
#!/bin/bash

# Input string
input_string="Hello, world!"

# Calculate the length of the input string
length=${#input_string}

# Loop from 1 to the length of the string
for ((i = 1; i <= length; i++)); do
    echo "Loop iteration $i"
done
