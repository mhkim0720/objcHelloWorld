//
//  Square.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/10.
//

#import "Square.h"

@implementation Square

+(id)initWithWidth:(int)newWidth{
    Square * newObj = [[Square alloc]initWithWidth:newWidth];
    return newObj;
    
}

-(id)initWithWidth:(int)newWidth{
    return [super initWithWidth:40 height:50];
}

-(void)setWidth:(int)newWidth{
    [super setWidth : newWidth];
    [super setHeight : newWidth];
    
    
    
}

@end
