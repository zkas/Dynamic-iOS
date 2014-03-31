//
//  Plugin.m
//  Library
//
//  Created by Damien DeVille on 3/31/14.
//  Copyright (c) 2014 Damien DeVille. All rights reserved.
//

#import "Plugin.h"

#import <UIKit/UIKit.h>

@implementation Plugin

- (void)sayHello
{
	NSURL *plistLocation = [[NSBundle bundleForClass:[self class]] URLForResource:@"Data" withExtension:@"plist"];
	NSDictionary *data = [NSDictionary dictionaryWithContentsOfURL:plistLocation];
	NSString *message = data[@"message"];
	
	UIAlertView *alertView = [[UIAlertView alloc] init];
	[alertView setTitle:@"Oh Hai"];
	[alertView setMessage:message];
	[alertView addButtonWithTitle:@"OK"];
	[alertView show];
}

@end
