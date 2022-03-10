//
//  MainViewController.m
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import "MainViewController.h"
#import "DetailSceneDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBackgroundColor];
}

-(void)openDetail:(id)sender
{
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:kDetailSceneName];
    [[UIApplication sharedApplication] requestSceneSessionActivation:nil userActivity:activity options:nil errorHandler:nil];
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
