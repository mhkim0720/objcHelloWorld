//
//  main.m
//  objcHelloWorld
//
//  Created by IMStudio on 2023/01/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        
        
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
              
    }
    return 0;
}
