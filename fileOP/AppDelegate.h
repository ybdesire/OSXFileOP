//
//  AppDelegate.h
//  fileOP
//
//  Created by Bin Yin on 4/1/14.
//  Copyright (c) 2014 Bin Yin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (IBAction)btRead:(id)sender;
- (IBAction)btWrite:(id)sender;

@property (weak) IBOutlet NSTextField *fileContentDisplay;
@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *fileContent;

@end
