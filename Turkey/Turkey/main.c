//
//  main.c
//  Turkey
//
//  Created by Blake Stiller on 2014-08-12.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float weight = 14.2;
    printf("The turkey weighs %f. \n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 * weight;

    // insert code here...
    printf("Cook it for %f hours. \n", cookingTime / 60);
    return 0;
}

