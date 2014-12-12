//
//  main.m
//  Exercise7-1
//
//  Created by Ian Wu on 14/12/11.
//  Copyright (c) 2014年 Ian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [Fraction new];
        Fraction *bFraction = [Fraction new];
        Fraction *resultFraction;
        int a1, a2, b1, b2;
        char choice;
        NSLog(@"Please enter 4 integers, the first pair is the first fraction, and the second pair is the second fraction:(Input non-number to exit)");
        while (scanf(" %i %i %i %i", &a1, &a2, &b1, &b2)) {
            [aFraction setTo:a1 over:a2];
            [bFraction setTo:b1 over:b2];
            NSLog(@"Please enter your choice - a is add/ s is subtract/ m is multiply/ d is divide/ e is exit:");
            while (scanf(" %c", &choice) && choice != 'e') {
                switch (choice) {
                    case 'a':
                        [aFraction print];
                        NSLog(@"+");
                        [bFraction print];
                        NSLog(@"=");
                        
                        resultFraction = [aFraction add:bFraction];
                        [resultFraction print];
                        break;
                    case 's':
                        [aFraction print];
                        NSLog(@"-");
                        [bFraction print];
                        NSLog(@"=");
                        
                        resultFraction = [aFraction subtract:bFraction];
                        [resultFraction print];
                        break;
                    case 'm':
                        [aFraction print];
                        NSLog(@"*");
                        [bFraction print];
                        NSLog(@"=");
                        
                        resultFraction = [aFraction multiply:bFraction];
                        [resultFraction print];
                        break;
                    case 'd':
                        [aFraction print];
                        NSLog(@"/");
                        [bFraction print];
                        NSLog(@"=");
                        
                        resultFraction = [aFraction divide:bFraction];
                        [resultFraction print];
                        break;
                    default:
                        break;
                }
                NSLog(@"Please enter your next choice - a is add/ s is subtract/ m is multiply/ d is divide/ e is exit:");
            }
            NSLog(@"Please enter another 4 integers, the first pair is the first fraction, and the second pair is the second fraction:(Input non-number to exit)");
        }
    }
    return 0;
}
