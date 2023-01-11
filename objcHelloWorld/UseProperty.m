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

-(id)initWithWidth:(int)newWidth height:(int)newHeight {
    self = [super init];
    if(self){
        [self setWidth:newWidth];
        [self setHeight:newHeight];
    }
    return self;
}

-(BOOL)isEqual:(id)object{
    
    //if([object isMemberOfClass:[UseProperty class]]){
    
    if([object isKindOfClass:[UseProperty class]])
    {        UseProperty * other = (UseProperty*)object;
        return _width  == other.width && _height == other.height;
    }
    return NO;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"UseProperty(%p) width : %d, height : %d",self,_width,_height];
}



@end
