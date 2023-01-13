//
//  Song.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import "Song.h"

@implementation Song

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist{
    self = [super init];
    if(self){
        self.title = title;
        _artist = artist;
    }
    return self;
}

+(id)songWithTitle:(NSString *)title artist:(NSString *)artist{
    Song * song = [[Song alloc] initWithTitle:title artist:artist];
    return song;
}

-(void)play{
    NSLog(@"Playing~~~ %@",_title);
}

@end
