//
//  MainTableViewController.m
//  GrailDiary
//
//  Created by Ross Gottschalk on 8/1/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "MainTableViewController.h"
#import "PlayerDetail.h"

@interface MainTableViewController ()
@property (strong, nonatomic) NSMutableArray *nbaPlayers;



@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"NBA Players";
    self.nbaPlayers = [[NSMutableArray alloc] init];
    [self loadNbaPlayers];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)loadNbaPlayers
{
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"NBAPlayers" ofType:@"json"];
    NSArray *nbaPlayersJSON = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filepath] options:0 error:nil];
    for (NSDictionary *aDict in nbaPlayersJSON)
    {
        PlayerDetail *aPlayer = [PlayerDetail playerDetailWithDictionary: aDict];
        [self.nbaPlayers addObject:aPlayer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.nbaPlayers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Player Cell" forIndexPath:indexPath];
    PlayerDetail *player = self.nbaPlayers [indexPath.row];
    cell.textLabel.text = player.name;
    cell.detailTextLabel.text = player.position;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
