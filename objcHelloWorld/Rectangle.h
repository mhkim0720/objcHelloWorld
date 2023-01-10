//
//  Rectangle.h
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/10.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject
{
    int height;
    int width;
}


+(id)rectangle;
+(id)rectangle:(int)width height:(int)height;


-(id)initWithWidth:(int)newWidth height:(int)newHeight;

-(void)setWidth:(int)newWidth;
-(int)width; //getter 에 get을 안붙임.


-(void)setHeight:(int)newHeight;
-(int)height; //getter 에 get을 안붙임.

-(int)size; //getter 에 get을 안붙임.


@end

NS_ASSUME_NONNULL_END
