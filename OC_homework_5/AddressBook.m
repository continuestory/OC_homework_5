//
//  AddressBook.m
//  
//
//  Created by CScent on 18/5/1.
//
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

//set up the Address Book's name and an empty book

-(id) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self) {
        
        bookName = name;
        book = [NSMutableArray array];
    }
    return self;
}



-(id) init
{
    return [self initWithName: @"NoName"];
}


-(void) setBook:(NSMutableArray *)aBook
{
    book = [NSMutableArray arrayWithArray: aBook];
    
}

-(id) copyWithZone: (NSZone *) zone
{
    AddressBook *newBook = [[AddressBook allocWithZone: zone] init];                //allocating a new AddressBook
    newBook.bookName = [NSString stringWithFormat: @"Copy of %@", self.bookName];   //creating the copy name
    
    [newBook setBook: book];        //copying the book array with the overriden setter method
    
    return  newBook;               //return the copy
}



-(void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}



-(NSUInteger) entries
{
    return [book count];
}



-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    for (AddressCard *theCard in book)
        NSLog(@"%-20s    %-32s", [theCard.firstName UTF8String], [theCard.lastName UTF8String]);
    NSLog(@"===================================================");
    
}




-(id) lookup:(NSString *)nameToSearch
{
    NSIndexSet * resultIndexes;
    resultIndexes = [book indexesOfObjectsPassingTest:^BOOL(AddressCard *nextCard, NSUInteger idx, BOOL *stop) {
        
        NSRange theRange;
        theRange = [nextCard.firstName rangeOfString:nameToSearch
                                             options:NSCaseInsensitiveSearch];
        
        if (theRange.location != NSNotFound)
            return  YES;
        else
            return NO;
    }];
    
    return [book objectsAtIndexes: resultIndexes];
    
}
@end
