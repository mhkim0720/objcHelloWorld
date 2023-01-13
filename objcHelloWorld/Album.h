//
//  Album.h
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import <Foundation/Foundation.h>
#import "Song.h"

NS_ASSUME_NONNULL_BEGIN

@interface Album : NSObject

@property (strong,nonatomic) NSMutableArray * songs;

-(void)addSong:(Song *)song;

-(void)removeSong:(NSString*)title;


-(Song *)searchSong:(NSString *)title;

-(void)play;


@end

NS_ASSUME_NONNULL_END
