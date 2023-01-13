//
//  Archiving.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import "Archiving.h"

@implementation Archiving

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if(self){
        //init
        _width = [aDecoder decodeIntForKey:@"WIDTH"];
        _height = [aDecoder decodeIntForKey:@"HEIGHT"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder * )aCoder{
    [aCoder encodeInt:_width forKey:@"WIDTH"];
    [aCoder encodeInt:_height forKey:@"HEIGHT"];
}



-(NSString *)description{
    return [NSString stringWithFormat:@"archive - width, height : %d, %d",_width,_height];
}


@end
