//
//  DetailViewController.m
//  GrailDiary
//
//  Created by Ross Gottschalk on 8/1/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerPositionLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTeamLabel;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Player Bio";
    self.playerNameLabel.text = self.player.name;
    self.playerPositionLabel.text = self.player.position;
    self.playerTeamLabel.text = self.player.team;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
