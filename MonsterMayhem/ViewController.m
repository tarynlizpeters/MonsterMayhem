//
//  ViewController.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@property (weak, nonatomic) IBOutlet UITableView *monsterTableView;
@property (weak, nonatomic) IBOutlet UITextField *monsterNameAdd;
@property MagicalCreature *tempCreature;
@property NSInteger tempIndex;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.creatures = [[NSMutableArray alloc] init];
    MagicalCreature *creatureOne = [[MagicalCreature alloc] init];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc] init];
    MagicalCreature *creatureThree = [[MagicalCreature alloc] init];
    
    creatureOne.name = @"Bob";
    creatureTwo.name = @"Judy";
    creatureThree.name = @"Chaz";
    
    [self.creatures addObject:creatureOne];
    [self.creatures addObject:creatureTwo];
    [self.creatures addObject:creatureThree];

    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MonsterID"];
    cell.textLabel.text = [[self.creatures objectAtIndex:indexPath.row] name];
    return cell;
    
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (IBAction)monsterAdd:(UIButton *)sender {
    MagicalCreature *addCreature = [[MagicalCreature alloc] init];
    addCreature.name = self.monsterNameAdd.text;
    [self.creatures addObject:addCreature];
    self.monsterNameAdd.text = @"";
    
    [self.monsterTableView reloadData];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CreatureViewController *dvc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.monsterTableView indexPathForSelectedRow];
    dvc.navigationItem.title = [[self.creatures objectAtIndex:indexPath.row] name];
}

@end
