#include <iostream>
#include <string>

// The main function asks for a username and prints a greeting.
int main()
{
    std::string name;                     // variable to store user input.
    std::cout << "Enter your name: ";     // prompt.
    std::cin >> name;                     // read input.
    std::cout << "Hello world from @" << name << std::endl; // output greeting.
    return 0;
}
