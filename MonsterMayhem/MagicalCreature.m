//
//  MagicalCreature.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature
-(instancetype) initWithName: (NSString *)name andDetails:(NSString *)details andAccessories:(NSString *)accessories andImage:(NSObject *)images {
    
    self = [super init];
    if (self)
        self.name = name;
    self.details = details;
    self.accessories = accessories;
    self.images = images;
    return self;
}

@end
