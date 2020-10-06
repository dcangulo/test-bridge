#import "TestModule.h"

@implementation TestModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(foo:(RCTResponseSenderBlock)callback)
{
  NSString *testString = @"test";
  callback(@[testString]);
}

@end
