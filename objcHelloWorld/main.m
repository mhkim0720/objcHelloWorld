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
#import "Tracer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ///*
        //11 Chapter - Memory
        //ARC (iOS5~ )
        //ptr = nil -> release memory, Dealloc
        NSLog(@"==========start");
        
        Tracer * obj1 = [[Tracer alloc]init];
        obj1.name = @"Obj1";
        
        obj1 = nil;
        
        Tracer * obj2 = [[Tracer alloc] init];
        obj2.name = @"Obj2";
        
        Tracer * obj3 = obj2;
        obj2 = nil;
        
        NSLog(@"==========end");
        
        //Object Lifecycle,
        //strong(default -> own object ),
        //weak, unsafe_unretained, autoreleaing (NSError) -> (un own object).
        
        
        /*
        //10 Foundation Framework - Time And Date
        //NSDate, NSDataFormatter, NSDateComponent
        NSDate * now = [NSDate date];
        NSDate * yesterday = [NSDate dateWithTimeIntervalSinceNow:~(60*60*24)];
        
        NSLocale * locale = [NSLocale currentLocale];
        NSLog(@"Now : %@",[now descriptionWithLocale:locale]);
        NSLog(@"Yesterday : %@",[yesterday descriptionWithLocale:locale]);
        
        NSDate * earlierDate = [now earlierDate:yesterday];
        NSLog(@"Compare : %ld",[yesterday compare:now]);
        
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        
        NSLog(@"Format Str : %@",[formatter stringFromDate:now]);
        
        NSDateComponents * comp1 = [[NSDateComponents alloc] init];
        [comp1 setYear:2023];
        [comp1 setMonth:01];
        [comp1 setDay:13];
        
        NSCalendar * calendar = [NSCalendar currentCalendar];
        NSDate * mayday = [calendar dateFromComponents:comp1];
        NSLog(@"Mayday : %@",[mayday descriptionWithLocale:locale]);
        
        NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay| NSCalendarUnitWeekday;
        NSDateComponents * comp2 = [calendar components:unit fromDate:now];
        
        NSLog(@"weekday : %ld" ,[ comp2 weekday]);
         */
        
        /*
        //9 Chapter Collection.
        //NSArray -> NSMutableArray, Operate on an index basis.
        NSArray * arr1 = [[NSArray alloc] initWithObjects:@"A",@"B",@"C", nil];
        NSArray * arr2 = @[@"1",@"2",@"3"];
        NSLog(@"arr1 = %@",arr1);
        NSLog(@"arr2 = %@",arr2);
        
        NSLog(@"3rd item : %@",[arr1 objectAtIndex:2]);
        NSLog(@"2nd item : %@",arr2[1]);
        
        for(int i =0 ; i< [arr1 count]; i++){
            NSLog(@"index : %d - item : %@",i, [arr1 objectAtIndex:i]);
        }
        for(id item in arr2)
        {
            NSLog(@"arr2 : %@",item);
        }
        NSMutableArray * arr3 = [NSMutableArray array];
        [arr3 addObject:@"a"];
        [arr3 addObject:@"b"];
        NSLog(@"Mutable array : %@",arr3);
        
        [arr3 removeObjectAtIndex:0];
        NSLog(@"Mutable array : %@,arr3");
        
        //data save functions.
        //key, value => id type
        //NSDictionary -> NSMutableDictionary
        
        NSDictionary * dic1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Value1",@"Key1", nil];
        NSDictionary * dic2 = @{@"key1":@"value1"};
        NSLog(@"key1 : %@",[dic1 objectForKey:@"Key1"]);
        NSLog(@"Key2 : %@",dic2[@"key1"]);
        NSLog(@"Key3 : %@",dic2[@"key3"]);
        
        NSMutableDictionary * dic3  = [NSMutableDictionary dictionary];
        [dic3 setObject:@"Value1" forKey:@"Key1"];
        [dic3 setObject:@"Value2" forKey:@"Key2"];
        NSLog(@"dic3 : %@",dic3);
        
        dic3[@"Key2"] = @"New Value2";
        NSLog(@"dic3 : %@",dic3);
        
        //Collection -> A class that handles multiple data / Class of take Many Data
        
        //NSSet -> Similar Array, Similar Dictionary.
        
        NSMutableArray * array = [NSMutableArray array];
        [array addObject:@{@"Key" : @"Value"}];
        [array addObject:@[@"item1",@"item2"]];
        [array addObject:[NSNumber numberWithInt:7]];
        [array addObject:@3.14];
        NSLog(@"array : %@",array);
        
        NSArray * array2 = array[1];
        NSNumber * num = array[2];
        
        NSLog(@"array 2: %@",array2);
        NSLog(@"num : %@",num);
        
        */
        
        
        /*
        //8 Chapter Foundation Framework and String (2023013)
        NSString * str = @"abcd";
        NSString * str1 = [[NSString alloc]initWithFormat:@"objectC%@",@"fito!!"];
        NSString * str2 = [NSString stringWithFormat:@"%d + %d = %d",1,2,(1+2)];
        
        NSLog(@"str : %@",str);
        NSLog(@"str1 : %@",str1);
        NSLog(@"str2 : %@",str2);
        
        NSLog(@"isEqualToString : %d",[@"abc" isEqualToString:@"ABC"]);
        NSLog(@"compare : %ld", [@"abc" compare:@"ABC"]);
        NSLog(@"NSCaseInsensitiveSearch : %ld",[@"abc" compare:@"ABC" options:NSCaseInsensitiveSearch]);
        
        NSLog(@"1 compare 09 : %ld",[@"1" compare:@"09"]);
        NSLog(@"1 compare, NSNumericSearch 09 : %ld",[@"1" compare:@"09" options:NSNumericSearch]);
        
        NSString * str3 = @"YES";
        if([str3 boolValue]){
            NSLog(@"seven is : %d",[@"7" intValue]);
        }
        
        NSString * str4 = [NSString stringWithFormat:@"%@", @"3.14"];
        NSLog(@"PI is %@",str4);
        
        NSString * str5 = @"123,456";
        NSRange range = [str5 rangeOfString:@","];
        NSLog(@"location : %ld, length : %ld",range.location,range.length);
        
        if(range.location != NSNotFound){
            NSLog(@"substringToIndex : %@", [str5 substringToIndex:range.location]);
            NSLog(@"substringFromIndex : %@",[str5 substringFromIndex:range.location + range.length]);
        }
        
        NSString * str6 = @"ABCD";
        NSString * folderPath = @"/Users/digisonic/desktop/mhkim/study";
        NSString * filePath = [folderPath stringByAppendingPathComponent:@"string.txt"];
        
        __autoreleasing NSError *error;
        BOOL ret = [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
        if(!ret){
            NSLog(@"Error : %@",[error localizedDescription]);
        }else{
            NSLog(@"file save ok !!");
        }
        
        NSString * str7 = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
        NSLog(@"str7 : %@",str7);

        //text content change -> NSMutableString
        //NSString inheritance
        //initialization method to input buffer size.
        */
       
        /*
        //7 Chapter (20230112)
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
        */
        
        /*
        //6 Chapter Selector And Properties (20230112)
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
        //1~5 chapter (20230111)
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
