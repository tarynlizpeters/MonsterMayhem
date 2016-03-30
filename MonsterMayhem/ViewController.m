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

@property CreatureViewController *dvc;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creatureOne = [[MagicalCreature alloc] initWithName:@"Bob" andDetails:@"Likes pie" andImage:[UIImage imageNamed:@"creatureone.png"]];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc] initWithName:@"Judy" andDetails:@"Big and scary" andImage:[UIImage imageNamed:@"creaturetwo.png"]];
    MagicalCreature *creatureThree = [[MagicalCreature alloc] initWithName:@"Chaz" andDetails:@"Scaredy cat" andImage:[UIImage imageNamed:@"creaturethree.png"]];
    
    self.creatures = [NSMutableArray arrayWithObjects:creatureOne, creatureTwo, creatureThree, nil];
    
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MonsterID"];
    
        cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
        MagicalCreature *magicalCreature = [self.creatures objectAtIndex:indexPath.row];
        
        cell.textLabel.text = magicalCreature.name;
        cell.detailTextLabel.text = magicalCreature.details;
        cell.imageView.image = magicalCreature.image;
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
        
    MagicalCreature *monster = [self.creatures objectAtIndex:self.tempIndexPath.row];

    //    dvc.navigationItem.title = monster.name;
//    dvc.details.text = monster.details;
//    dvc.imageView.image = monster.image;
//    self.tempCreature = monster;
    dvc.tempCreature = monster;

}

@end
