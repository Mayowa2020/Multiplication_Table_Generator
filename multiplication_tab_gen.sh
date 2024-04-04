#!/bin/bash
# Multiplication Table Generator

# Function to display the header
display_header() {
    clear
    echo "Multiplication Table Generator"
    echo "-------------------------------"
    echo "Author: Bukky Oyetimehin"
    echo "Date: $(date)"
    echo
}

# Function to validate user input as a positive integer
validate_input() {
    local input="$1"
    if [[ "$input" =~ ^[1-9][0-9]*$ ]]; then
        return 0  # Valid input
    else
        return 1  # Invalid input
    fi
}

# Function to generate and display the multiplication table using list form for loop
generate_full_table() {
    local num="$1"
    echo "Multiplication table (1 to 10) for $num:"
    for i in {1..10}; do
        result=$((num * i))
        echo "$num x $i = $result"
    done
}

# Function to generate and display the multiplication table using list form for loop within a range
generate_partial_table() {
    local num="$1"
    local start="$2"
    local end="$3"
    echo "Multiplication table ($start to $end) for $num:"
    for (( i = start; i <= end; i++ )); do
        result=$((num * i))
        echo "$num x $i = $result"
    done
}

# Main program
while true; do
    display_header
    read -p "Enter a positive integer for the multiplication table: " number
    validate_input "$number" || { echo "Invalid input. Please enter a positive integer."; continue; }
    echo "Choose an option:"
    echo "1. Full multiplication table (1 to 10)"
    echo "2. Partial multiplication table (within a specified range)"
    echo "3. Exit"
    read -p "Enter your choice (1, 2, or 3): " choice

    case "$choice" in
        1)
            generate_full_table "$number"
            ;;
        2)
            read -p "Enter the start of the range: " start
            read -p "Enter the end of the range: " end
            validate_input "$start" || { echo "Invalid input for start. Please enter a positive integer."; continue; }
            validate_input "$end" || { echo "Invalid input for end. Please enter a positive integer."; continue; }
            generate_partial_table "$number" "$start" "$end"
            ;;
        3)
            echo "Exiting. Thank you!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select 1, 2, or 3."
            ;;
    esac

    read -p "Do you want to see the table in ascending (a) or descending (d) order? " order

    if [[ "$order" == "a" ]]; then
        echo "Ascending order:"
        for i in {1..10}; do
            echo "$number x $i = $(($number * $i))"
        done
    elif [[ "$order" == "d" ]]; then
        echo "Descending order:"
        for ((i = 10; i >= 1; i--)); do
            echo "$number x $i = $(($number * $i))"
        done
    else
        echo "Invalid input. Displaying in ascending order by default."
        for i in {1..10}; do
            echo "$number x $i = $(($number * $i))"
        done
    fi

    read -p "Press Enter to continue..."
done
