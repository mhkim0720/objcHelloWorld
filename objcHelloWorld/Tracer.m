//
//  Tracer.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import "Tracer.h"

@implementation Tracer

-(void)dealloc{
    NSLog(@"At memory %@ Object Release, Dealloc ",_name);
}


@end
