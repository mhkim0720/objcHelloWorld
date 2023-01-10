//
//  Rectangle.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/10.
//
#import "Rectangle.h"

@implementation Rectangle

//
-(id)init{
    return [self initWithWidth:10 height:10];
            /*
    self = [super init];
    if(self){
        //width = 10;
        //height = 10;
        
        //available both. top below
        [self setWidth:10];
        [self setHeight:10];
    }
    return self;*/
}

//factory method
+(id)rectangle{
    Rectangle *obj = [[Rectangle alloc] init];
    return obj;
}
+(id)rectangle:(int)width height:(int)height{
    Rectangle * newObj = [[Rectangle alloc] initWithWidth:width height:height];
    return newObj;
}


-(id)initWithWidth:(int)newWidth height:(int)newHeight {
    self = [super init];
    if(self){
        [self setWidth:newWidth];
        [self setHeight:newHeight];
    }
    return self;
}


-(BOOL) isSquare{
    return width == height;
}

-(void)setWidth:(int)newWidth
{
    width = newWidth;
}

-(int)width{
    return width;
}

-(void)setHeight:(int)newHeight
{
    height = newHeight;
}

-(int)height{
    return height;
}

-(int)size{
    return width * height;
}

@end
