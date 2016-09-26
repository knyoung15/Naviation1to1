//
//  ViewController.m
//  Navigation1to1
//
//  Created by KN_STUDIO on 2016. 9. 26..
//  Copyright © 2016년 KN_STUDIO. All rights reserved.
//

#import "ViewController.h"
#import "OrderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pizzaChicken;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    OrderViewController *vc = [segue destinationViewController];
    
    NSString *ordered = [pizzaChicken titleForSegmentAtIndex:[pizzaChicken selectedSegmentIndex]];
    
    vc.title = ordered;
    ordered = [ordered stringByAppendingString:@", 맞나요?"];
    
    vc.info = [NSString stringWithFormat:@"감사합니다!! \n 주문내역 : %@", ordered];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)prepareForSegue:(UISegmentedControl *)sender {
}
@end
