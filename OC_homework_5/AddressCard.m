//
//  AddressCard.m
//  
//
//  Created by CScent on 18/5/1.
//
//

#import "AddressCard.h"

@implementation AddressCard

-(void) setFirstName:(NSString *)aFirstName
            lastName:(NSString *)aLastName
             country:(NSString *)aCountry
             address:(NSString *)aAddress
                city:(NSString *)aCity
                 ZIP:(NSString *)aZIP
               phone:(NSString *)aPhone
               email:(NSString *)aEmail
{
    _firstName  = aFirstName;
    _lastName   = aLastName;
    _country    = aCountry;
    _address    = aAddress;
    _city       = aCity;
    _ZIP        = aZIP;
    _phone      = aPhone;
    _email      = aEmail;
}



//CODE FOR CHAPTER 19 NSCODING
-(id) initWithCoder:(NSCoder *)aDecoder
{
    _firstName  = [aDecoder decodeObjectForKey: @"AddressCardFirstName"];
    _lastName   = [aDecoder decodeObjectForKey: @"AddressCardLastName"];
    _country    = [aDecoder decodeObjectForKey: @"AddressCardCountry"];
    _address    = [aDecoder decodeObjectForKey: @"AddressCardAddress"];
    _city       = [aDecoder decodeObjectForKey: @"AddressCardCity"];
    _ZIP        = [aDecoder decodeObjectForKey: @"AddressCardZIP"];
    _phone      = [aDecoder decodeObjectForKey: @"AddressCardPhone"];
    _email      = [aDecoder decodeObjectForKey: @"AddressCardEmail"];
    
    return self;
}


-(void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject: _firstName forKey: @"AddressCardFirstName"];
    [aCoder encodeObject: _lastName forKey: @"AddressCardLastName"];
    [aCoder encodeObject: _country forKey: @"AddressCardCountry"];
    [aCoder encodeObject: _address forKey: @"AddressCardAddress"];
    [aCoder encodeObject: _city forKey: @"AddressCardCity"];
    [aCoder encodeObject: _ZIP forKey: @"AddressCardZIP"];
    [aCoder encodeObject: _phone forKey: @"AddressCardPhone"];
    [aCoder encodeObject: _email forKey: @"AddressCardEmail"];
}

//END OF CODE FOR CHAPTER 19



-(void) print
{
    NSLog(@" ----------------------------------------------");
    NSLog(@"|                                              |");
    NSLog(@"|  %-20s    %-20s|", [_firstName UTF8String], [_lastName UTF8String]);
    NSLog(@"|  %-20s    %-20s|", [_email UTF8String], [_phone UTF8String]);
    NSLog(@"|  %-20s    %-20s|", [_city UTF8String], [_address UTF8String]);
    NSLog(@"|  %-20s    %-20s|", [_ZIP UTF8String], [_country UTF8String]);
    NSLog(@"|                                              |");
    NSLog(@"|        o                            o        |");
    NSLog(@" ----------------------------------------------");
}
@end
