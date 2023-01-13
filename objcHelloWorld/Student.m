//
//  Student.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import "Student.h"

@implementation Student
-(void)study{
    NSLog(@"study func");
}
@end

@implementation Student (Enrollment)
-(void)enroll{
    NSLog(@"enroll func");
}

@end
