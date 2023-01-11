//
//  UseProperty.h
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/11.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface UseProperty : NSObject

@property (nonatomic) int width;
@property int height;

//member mothod
//-(int)size;

//property declare
@property (readonly) int size;

-(BOOL)isEqual:(id)object;

-(id)initWithWidth:(int)newWidth height:(int)newHeight;


@end

NS_ASSUME_NONNULL_END
