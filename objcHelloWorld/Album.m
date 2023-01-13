//
//  Album.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import "Album.h"

@implementation Album

-(id)init{
    self = [super init];
    if(self){
        _songs = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addSong:(Song *)song{
    [_songs addObject:song];
    NSLog(@"add song to album : %@",song.title);
}

-(void)removeSong:(NSString *)title{
    Song * song = [self searchSong:title];
    [_songs removeObject:song];
    
}

-(Song *)searchSong:(NSString *)title{
    for(Song * song in _songs){
        
//        compare song title
//        if([song.title isEqualToString:title]){
//            return song;
//        }
        
        if([song isEqualToSongTitle:title]) return song;
    }
    return nil;
}

-(void)play{
    for(Song * song in _songs){
        [song play];
    }
}

@end
