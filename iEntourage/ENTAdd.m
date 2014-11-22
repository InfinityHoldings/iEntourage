//
//  ENTAdd.m
//  iEntourage
//
//  Created by King Keon on 11/20/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import "ENTAdd.h"

@implementation ENTAdd

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if (sender != self.doneButton ) {
        return;
    }
    
    if (self.textField.text.length > 0) {
        self.task = [[ENTTask alloc]init];
        self.task.name = self.textField.text;
        self.task.completed = NO; 
    }
}

- (void) simpleTestMethod {
    
    //THe id data type can be used to store objects of type Object (anything)
    id keon = @"Keon";
    
    NSArray * testArray = [NSArray arrayWithObject:keon];
    
    if([testArray containsObject:keon]){
        NSLog(@"Keon is inside here!!");
    }
    
    if([testArray count] > 0){
        NSLog(@"The array has at least one item inside");
        NSLog(@"The first item is : %@", [testArray objectAtIndex:0]);
    }
    
    NSLog(@"The value in the array %@", testArray[0]);
    
    NSArray * imArray = @[@"alpha", @"beta", @"gamma", @"omega", @"epsillon"];
    
    NSArray * sortedArray = [imArray sortedArrayUsingSelector:@selector(compare:)];
    
    NSMutableString * mString = [NSMutableString stringWithString:@"Hello"];
    
    NSArray * nmArray = [NSArray arrayWithObject:mString];
    
    if( [imArray count] > 0 ){
        if ([mString isKindOfClass:[NSMutableString class]]) {
            NSLog(@"Of type mutable string!, appending!");
            [mString appendString:@"NEW WORLD!"];
        }
    }
    
    NSMutableArray * mArray = [NSMutableArray array];
    
    [mArray addObject:@"Alpha"];
    [mArray addObject:@"Omega"];
    [mArray addObject:@"Beta"];
    [mArray removeObject:@"Omega"];
    [mArray replaceObjectAtIndex:0 withObject:@"Gamma"];
    
    //sort in place (without creating secondary array)
    [mArray sortUsingSelector:@selector(caseInsensitiveCompare:)];
    
    //set is just an unordered group of distinct obejects; nil terminated
    //no key value, just an unordered array
    NSSet * set = [NSSet setWithObjects:@"keon", @34, @"pikachu!", nil];
    
    NSNumber * myInt = @32;
    
    NSMutableSet * mutableSet = [NSMutableSet setWithObjects:myInt,myInt,myInt,myInt,myInt,myInt, nil];
    
    if ([mutableSet count] > 0) {
        NSLog(@"Mutable count : %lu", (unsigned long)[mutableSet count]);
        NSLog(@"Even though we added the same item multiple times it still only has :%lu items inside!", [mutableSet count]);
    }
    
    //FUN with dictionaries
    //An array of key value pairs. kinda like a double index array
    
    //Creation
    
    //created by sending dictionary object an initialization method message, and specifying keys/values in a nil terminated list
    NSDictionary * diction = [NSDictionary dictionaryWithObjectsAndKeys:@"name", @"Keon", @"gender", @"alphamale", @"age", @26, nil];
    
    //can also be created using obj-c shorhand
    NSDictionary * d2 = @{@"name" : @"keon",
                          @"gender" : @"alpha male",
                          @"age" : @26};
    
    //Querying
    
    // object retrieval
    NSNumber * age = [d2 objectForKey:@"age"];
    
    //subscript object retrieval :) ; acess like shorthand indicies, but specify key instead of index
    NSNumber * earthYears = d2[@"age"];
    
    //Mutability
    [d2 setValue:@"26 & 1/2" forKey:@"age"];
    
    //dont worry about my age
    [d2 setValue:nil forKey:@"age"]; 
}

@end
