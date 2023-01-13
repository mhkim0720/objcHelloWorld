//
//  Song.h
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Song : NSObject

@property (strong,nonatomic) NSString * title;
@property (strong,nonatomic) NSString *artist;
@property int duration;

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist;
+(id)songWithTitle:(NSString *)title artist:(NSString *)artist;
-(void)play;


@end

NS_ASSUME_NONNULL_END
