//
//  ViewController.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "CreatureViewController.h"
#import "MagicalCreature.h"



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSIndexPath *tempIndexPath;
@property NSMutableArray *creatures;

@property (weak, nonatomic) IBOutlet UITableView *monsterTableView;
@property (weak, nonatomic) IBOutlet UITextField *monsterNameAdd;
@property (weak, nonatomic) IBOutlet UIImageView *picture;

@property CreatureViewController *dvc;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creatureOne = [[MagicalCreature alloc] init];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc] init];
    MagicalCreature *creatureThree = [[MagicalCreature alloc] init];
    
    creatureOne.name = @"Bob";
    creatureTwo.name = @"Judy";
    creatureThree.name = @"Chaz";
    
    creatureOne.details = @"Likes pie";
    creatureTwo.details = @"Big and scary";
    creatureThree.details = @"Scaredy cat";
    
    creatureOne.accessories = @"Pie of Doom";
    creatureTwo.accessories = @"Giant axe";
    creatureThree.accessories = @"Teddy bear";

    creatureOne.images = [UIImage imageNamed:@"creatureone.png"];
    creatureTwo.images = [UIImage imageNamed:@"creaturetwo.png"];
    creatureThree.images = [UIImage imageNamed:@"creaturethree.png"];
    
    self.creatures = [NSMutableArray new];
    [self.creatures addObject:creatureOne];
    [self.creatures addObject:creatureTwo];
    [self.creatures addObject:creatureThree];
    
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MonsterID"];
    
    if (self.creatures.count > 0) {
        
    cell.textLabel.text = [[self.creatures objectAtIndex:indexPath.row] name];
    cell.detailTextLabel.text = [[self.creatures objectAtIndex:indexPath.row] details];
    cell.detailTextLabel.text = [[self.creatures objectAtIndex:indexPath.row] accessories];
    cell.imageView.image = [[self.creatures objectAtIndex:indexPath.row]images];
        
    }
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
    self.tempIndexPath = [self.monsterTableView indexPathForSelectedRow];
    
    //when i added the variable monster, broke my back button
    
    MagicalCreature *monster = [self.creatures objectAtIndex:self.tempIndexPath.row];
    dvc.navigationItem.title = monster.name;
    dvc.detailsLabel.text = monster.details;
    self.tempCreature = monster;
    dvc.tempCreature = monster;

}

@end
