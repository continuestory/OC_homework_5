//
//  AddressBook.h
//  
//
//  Created by CScent on 18/5/1.
//
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
@interface AddressBook : NSObject
@property NSString *bookName;
@property (nonatomic,copy) NSMutableArray *book;

-(id) initWithName: (NSString *) name;



-(id) init;


-(void) setBook:(NSMutableArray *)aBook;

-(id) copyWithZone: (NSZone *) zone;


-(void) addCard: (AddressCard *) theCard;

-(void) list;



-(id) lookup:(NSString *)nameToSearch;

@end
