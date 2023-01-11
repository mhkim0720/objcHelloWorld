//
//  UseProperty.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/11.
//

#import "UseProperty.h"

@implementation UseProperty

-(int)size{
    return _width * _height;
}

-(void)setWidth:(int)width{
    if(width < 0)
    {
        _width = 0;
    }
    else _width = width;
}


@end
