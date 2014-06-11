//
//  AppDelegate.m
//  fileOP
//
//  Created by Bin Yin on 4/1/14.
//  Copyright (c) 2014 Bin Yin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}


- (IBAction)btRead:(id)sender {
    //read content from file
    NSFileManager *filemgr;
    filemgr=[NSFileManager defaultManager];
    NSString *file = @"/tmp/SFlog.txt";//file path
    
    if([filemgr fileExistsAtPath:file]==YES)//detect if this file is exist
    {
        NSLog(@"file exist");
    }
    else
    {
        NSLog(@"file not exist");
    }
    
    [self.fileContentDisplay setStringValue:[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil]];//read the file content from file. and display the content as string to self.fileContentDisplay
    
}
- (IBAction)btWrite:(id)sender {
    //write content to file
    NSString *file = @"/tmp/SFlog.txt";//file path
    NSString *content = [self.fileContent stringValue];//the content to be writeed to file

    [content writeToFile:file atomically:YES encoding:NSUTF8StringEncoding error:nil];//write content to file
    
}
@end
