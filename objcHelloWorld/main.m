//
//  main.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/10.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "UseProperty.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //7 Chapter
        //object compare
        UseProperty * u1 = [[UseProperty alloc] initWithWidth:20 height:20];
        UseProperty * u2 = [[UseProperty alloc] initWithWidth:10 height:20];
        
        if([u1 isEqual:u2]){
            NSLog(@"u1 u2 same");
        }
        else
            NSLog(@"u1 u2 is differ");
        
        UseProperty * u3 = [[UseProperty alloc] initWithWidth:10 height:20];
        
        if([u2 isEqual:u3]){
            NSLog(@"u2 u3 same");
        }
        else
            NSLog(@"u2 u3 is differ");
        
        Square * s1 = [[Square alloc] initWithWidth:10 height:20];
        
        if([u3 isEqual:s1]){
            NSLog(@"s1 u3 same");
        }
        else
            NSLog(@"s1 u3 is differ");
        
        //description method
        //%p, width, height
        NSLog(@"u1 : %@",u1);
        
        
        
        /*
        //6 Chapter Selector And Properties
        //Property
        UseProperty * obj = [[UseProperty alloc] init];
        obj.width = -10;
        obj.height = 10;
        NSLog(@"width : %d height : %d",obj.width,obj.height);
        NSLog(@"size : %d",[obj size]);
        NSLog(@"size : %d",obj.size);
        
        //size set value -> Occur Build Fail cause readonly property.
        //obj.size = 200;
        
        //Selector
        NSString * strr = @"Hello world";
        SEL s = @selector(uppercaseString);
        NSString * ret = [strr performSelector:s];
        NSLog(@"Result : %@", ret);

        //crash unrecognize selector
        SEL s2 = @selector(abcd);
        
        if([strr respondsToSelector:s2])
            [strr performSelector:s2];
        else
            NSLog(@"abcd selector call impossible");
        */
        
        
        /*
        //1~5 chapter
        // inheritant class
        // init method
        // factory method
        //init Method
        Rectangle *r1 = [[Rectangle alloc] init];
        //int size = [r1 size];
        NSLog(@"Rectagle size : %d",[r1 size]);
        
        Rectangle *r2 = [[Rectangle alloc] initWithWidth:20 height:40];
        NSLog(@"Rectangle 2 size : %d",[r2 size]);
        
        Square * s1 = [[Square alloc] initWithWidth:20 height:30];
        NSLog(@"Sqaure size : %d",[s1 size]);
        
        //factory method
        Rectangle * obj1 = [Rectangle rectangle];
        NSLog(@"factory Rectangle size : %d",obj1.size);
        NSLog(@"factory Rectangle size : %d",[obj1 size]);
        Rectangle * obj2 = [Rectangle rectangle:10 height:20];
        NSLog(@"factory Rectangle size2 : %d",obj2.size);
        NSLog(@"factory Rectangle size2 : %d",[obj2 size]);
        //[obj1 size];
        
        Square * obj3 = [Square initWithWidth:20];
        NSLog(@"factory Square size : %d",[obj3 size]);
        */
        
        // 
        /*
        Square * rect = [[Square alloc] init];
        [rect setWidth:20];
        //[rect setHeight:30];
        NSLog(@"width : %d, height : %d",[rect width],[rect height]);
        int size = [rect size];
        NSLog(@"Square (20*30) size : %d",size);
        */
        /*
        Rectangle * rect = [[Rectangle alloc] init];
        [rect setWidth:20];
        [rect setHeight:30];
        
        NSLog(@"width : %d, height : %d",[rect width],[rect height]);
        int size = [rect size];
        
        NSLog(@"Rectangle(20*30) size : %d",size);
         */

        /*
        NSLog(@"\n\n");
        //FactoryMethod
        NSString * str6 = [NSString stringWithString:@"Factory Method"];
        NSString * str7 = [NSString stringWithFormat:@"Factory:%@",@"Method"];
        
        NSLog(@"str6:%@",str6);
        NSLog(@"str7:%@",str7);
        
        NSLog(@"============================\n\n");
        NSString * str3 = @"1";
        NSComparisonResult result = [str3 compare:@"09"];
        NSLog(@"Result : %ld",result);
        
        NSComparisonResult result2 = [str3 compare:@"09" options:NSNumericSearch];
        NSLog(@"Result : %ld",result2);
        
        NSLog(@"=============================\n\n");
        
        NSString * str2;
        if(nil == str2)
        {
            str2 = [NSString stringWithFormat:@"Hello %@",@"Objective C"];
        }
        
        NSString * str = nil;
        NSLog(@"Upper Case String : %@",[str uppercaseString]);
        NSLog(@"Length : %lu", (unsigned long)[str length]);
        NSLog(@"\n\n");
        
        NSString * str11;
        NSLog(@"str11 : %@",str11);
        if(!str11)
        {
            str11 = [NSString stringWithFormat:@"Hello %@",@"Objective C"];
        }
        NSLog(@"str11:%@",str11);
        
        
        NSString * str12;
        NSLog(@"Nil : %@", [str12 uppercaseString]);
        NSLog(@"Nil : %ld", [str12 length]);
        
        NSLog(@"\n\n");
        
        NSObject * obj = [[NSObject alloc] init];
        NSLog(@"Object : %@",obj);
        NSLog(@"Object : %d",obj);
        NSLog(@"Object : %x",obj);
        NSLog(@"Object : %c",obj);
        NSLog(@"Object : %s",obj);
        
        NSObject *obj2 = obj;
        NSLog(@"Object : %@",obj);
        
        NSLog(@"\n\n");
        
        NSLog(@"Hello, World!");
        
        NSLog(@"%d",2);
         */
              
    }
    return 0;
}
