//
//  main.c
//  ClassCertificates
//
//  Created by Blake Stiller on 2014-08-12.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#include <stdio.h>

void congradulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s programming as I could fit into %d days. \n", student, course, numDays);

}

int main(int argc, const char * argv[])
{

    // insert code here...
    congradulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congradulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congradulateStudent("Mike", "Python", 5);
    sleep(2);
    congradulateStudent("Liz", "iOS", 5);
    
    return 0;
}


