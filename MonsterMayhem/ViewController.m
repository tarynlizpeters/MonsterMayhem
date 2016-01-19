//
//  ViewController.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"


@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.creatures = [[NSMutableArray alloc] init];
    MagicalCreature *creatureOne = [[MagicalCreature alloc] init];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc] init];
    MagicalCreature *creatureThree = [[MagicalCreature alloc] init];
    [self.creatures addObject:creatureOne];
    [self.creatures addObject:creatureTwo];
    [self.creatures addObject:creatureThree];

    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MonsterID"];
    return cell;
    
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}




@end
