//
//  Student.h
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
-(void)study;

@end

@interface Student (Enrollment)
-(void)enroll;

@end


NS_ASSUME_NONNULL_END
