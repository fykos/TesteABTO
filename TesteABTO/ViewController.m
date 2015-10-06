//
//  ViewController.m
//  TesteABTO
//
//  Created by Elis Nunes Ficos on 06/10/15.
//  Copyright (c) 2015 TesteABTO. All rights reserved.
//

#import "ViewController.h"

#import <AbtoSipClientWrapper/AbtoSipPhoneObserver.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    BOOL abt = [AbtoVoipInterface abtoInitialize:nil];
    
    BOOL abt2 = [AbtoVoipInterface abtoLogInOnServer:@"getonsip.com" username:@"casadaarvore" password:@"casa1a2b"];
    
    
    [AbtoVoipInterface abtoStartVoiceCallWithURI:@"sip:casadaarvore_ios@getonsip.com" notify:nil];
    
    
    
}

@end
