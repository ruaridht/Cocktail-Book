//
//  CBCocktail.m
//  Cocktail Book
//
//  Created by Ruaridh Sinclair Thomson on 17/11/2012.
//  Copyright (c) 2012 Ruaridh Sinclair Thomson. All rights reserved.
//

#import "CBCocktail.h"

@interface CBCocktail()

@end

@implementation CBCocktail

@synthesize name;
@synthesize desciption;
@synthesize ingredients;
@synthesize method;
@synthesize isFavourite;
@synthesize drinkType;
@synthesize category;
@synthesize howManyIServe;

- (id)initWithName:(NSString *)n description:(NSString *)desc
{
    self = [super init];
    if (self) {
        self.name = n;
        self.desciption = desc;
    }
    return self;
}

- (id)initFromDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.name = [dict objectForKey:@"name"];
        self.desciption = [dict objectForKey:@"description"];
        NSArray *ing = [dict objectForKey:@"ingredients"];
        self.ingredients = ing;
        self.method = [dict objectForKey:@"method"];
        self.drinkType = [dict objectForKey:@"drinkType"];
        self.category = [dict objectForKey:@"category"];
        self.howManyIServe = [dict objectForKey:@"numberserved"];
    }
    return self;
}

- (NSDictionary *)dictionaryForCocktail
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    [dict setObject:name forKey:@"name"];
    [dict setObject:desciption forKey:@"description"];
    [dict setObject:ingredients forKey:@"ingredients"];
    [dict setObject:method forKey:@"method"];
    [dict setObject:drinkType forKey:@"drinkType"];
    [dict setObject:category forKey:@"category"];
    [dict setObject:howManyIServe forKey:@"numberserved"];
    
    return [dict copy];
}

@end
