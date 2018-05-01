//
//  main.m
//  OC_homework_5
//
//  Created by CScent on 18/5/1.
//  Copyright (c) 2018年 CScent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //18.1 test
        AddressCard * aCard = [[AddressCard alloc] init];
        AddressCard * bCard = [[AddressCard alloc] init];
        
        [aCard setFirstName: @"Cesare"
                   lastName: @"Rossi"
                    country: @"Italy"
                    address: @"via volta, 15"
                       city: @"milano"
                        ZIP: @"22100"
                      phone: @"12345678"
                      email: @"cesare@rossi.it"];
        
        [bCard setFirstName: @"Antonio"
                   lastName: @"Bianchi"
                    country: @"Italy"
                    address: @"vicolo stretto, 76"
                       city: @"Firenze"
                        ZIP: @"50100"
                      phone: @"87654321"
                      email: @"antonio@bianchi.it"];
        
        
        
        //set up a new address book
        
        AddressBook * myBook = [[AddressBook alloc] initWithName: @"Ceres's Address Book"];
        
        
        //add the cards to the address book
        
        [myBook addCard: aCard];
        [myBook addCard: bCard];
        [myBook list];
        
        NSLog(@" ");
        
        //make a backup copy of 'mybook'
        
        AddressBook *backupBook = [myBook copy];
        
        [backupBook list];
        
        NSLog(@" ");
        NSLog(@"Remove last entry in mybook");
        
        [myBook.book removeLastObject];
        
        NSLog(@" ");
        [myBook list];
        [backupBook list];
        
        //19.4 test
//        NSProcessInfo *process = [NSProcessInfo processInfo];
//        NSArray *args = [process arguments];
//        NSArray *result;
//        NSString *homeDirectory = NSHomeDirectory();
//        AddressBook *myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:[homeDirectory stringByAppendingPathComponent: @"mybook"]];
//        
//        if ([args count] != 2) {
//            NSLog(@"Usage: %@ ContactName", [process processName]);
//            return 1;
//        }
//        
//        result = [myBook lookup: args[1]];
//        [result makeObjectsPerformSelector:@selector(print)];

    }
    return 0;
}
