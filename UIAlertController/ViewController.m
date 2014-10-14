//
//  ViewController.m
//  UIAlertController
//
//  Created by 李健銘 on 2014/10/8.
//  Copyright (c) 2014年 Takobear. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonEvent:(UIButton *)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertController Title"
                                                                             message:@"UIAlertController Message"
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action){
                                                             NSLog(@" action : %@ ",action.title);
                                                         }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style: UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action){
                                                         NSLog(@" action : %@ ",action.title);
                                                     }];
    
    UIAlertAction *midAction = [UIAlertAction actionWithTitle:@"middle"
                                                        style: UIAlertActionStyleDestructive
                                                      handler:^(UIAlertAction *action){
                                                          NSLog(@" action : %@ ",action.title);
                                                      }];
    
    UIAlertAction *lastAction = [UIAlertAction actionWithTitle:@"last"
                                                          style: UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction *action){
                                                            NSLog(@" action : %@ ",action.title);
                                                        }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [alertController addAction:midAction];
    [alertController addAction:lastAction];
    [self presentViewController:alertController animated:YES completion:^{
        NSLog(@"Alert showed");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
