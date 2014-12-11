//
//  Fraction.m
//  Exercise7-1
//
//  Created by Ian Wu on 14/12/11.
//  Copyright (c) 2014年 Ian. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}
-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) subtract:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [Fraction new];
    int temp = 0;
    temp = f.numerator;
    f.numerator = f.denominator;
    f.denominator = temp;
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
@end
