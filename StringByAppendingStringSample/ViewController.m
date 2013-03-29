//
//  ViewController.m
//  StringByAppendingStringSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self appendingString];
  [self appendingFormatString];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)appendingString
{
  //連結する文字列の作成
  NSString *strFirst = @"first";
  NSString *strSecond = @"second";
  
  //文字列をカンマ区切りで連結する
  NSString *str;
  str = [[strFirst stringByAppendingString:@", "]
         stringByAppendingString:strSecond];
  
  NSLog(@"%@", str);
}

- (void)appendingFormatString
{
  NSString *strFirst = @"first";
  NSString *strSecond = @"second";
  
  //フォーマット済み文字列を連結する
  NSString *str;
  str = [strFirst stringByAppendingFormat:@",%@", strSecond];
  
  NSLog(@"%@", str);
}

@end
