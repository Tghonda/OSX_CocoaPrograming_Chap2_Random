//
//  ViewController.m
//  Random
//
//  Created by 本田忠嗣 on 2016/05/01.
//  Copyright © 2016年 TadatsuguHonda. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}

- (void)awakeFromNib {
	NSDate *now;
	
	now = [NSDate date];
	[self.textField setObjectValue:now];
}

- (IBAction)seed:(id)sender {
	srandom((unsigned int)time(NULL));
	[self.textField setStringValue:@"Generator seeded"];
}

- (IBAction)generate:(id)sender {
	int generated;
	generated = (int)(random()%100+1);
	
	NSLog(@"generated=%d", generated);
	
	[self.textField setIntValue:generated];
}

@end
