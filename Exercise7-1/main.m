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
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction add:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"-");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction subtract:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"*");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction multiply:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction divide:bFraction];
        [resultFraction print];
    }
    return 0;
}
