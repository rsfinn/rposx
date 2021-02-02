//
//  RPAppDelegate.m
//  Radio Paradise
//
//  Created by Giacomo Tufano on 04/04/13.
//  ©2013 Giacomo Tufano.
//  Licensed under MIT license. See LICENSE file or http://www.opensource.org/licenses/mit-license.php
//

#import "RPAppDelegate.h"

@implementation RPAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [[NSUserDefaults standardUserDefaults] setObject:@YES forKey:@"NSQuitAlwaysKeepsWindows"];
    self.appIsQuitting = NO;
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender {
    self.appIsQuitting = YES;
    return NSTerminateNow;
}

@end
