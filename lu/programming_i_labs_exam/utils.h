#include <iostream>
#include <math.h>
using namespace std;

// general utils, not specific to some problem

// prints the string
void print(string text)
{
    cout << endl << text;
}

// print an array
void print(int* array, int size)
{
    print("--------------");
    for (int i = 0; i <= size; i++)
        cout << endl << "element " << i << " is " << array[i];
}

// print out a question and get an input as integer
int request_int(string question)
{
    int answer = -1;
    while (answer < 0)
    {
        print(question);
        cin >> answer;
        if (answer <0) print("Your input was incorrect.");
    }
    return answer;
}
// print out a question and get an input as character
char request_chr(string question)
{
    char answer;
    print(question);
    cin >> answer;
    return answer;
}

string to_char(int integer)
{
    const int size = 9;
    const int base = 10;

    char character[size];
    itoa(integer, character, base);
    return character;
}


// function to find and print test result
void test(string description, int expected, int actual)
{
    string result = (expected == actual) ? "passed" : "FAILED";

    cout << "testing ";
    cout.width(12);
    cout << description + ": ";
    cout << result;
    cout << "| expected: ";
    cout.setf (ios::right);
    cout.width(10);
    cout << expected;
    cout << " received: ";
    cout.setf (ios::right);
    cout.width(10);
    cout << actual << endl;
}
