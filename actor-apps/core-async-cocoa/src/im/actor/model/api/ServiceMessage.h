//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/ServiceMessage.java
//

#ifndef _APServiceMessage_H_
#define _APServiceMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/Message.h"

@class APServiceEx;
@class BSBserValues;
@class BSBserWriter;

@interface APServiceMessage : APMessage

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)text
                 withAPServiceEx:(APServiceEx *)ext;

- (APServiceEx *)getExt;

- (jint)getHeader;

- (NSString *)getText;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APServiceMessage)

FOUNDATION_EXPORT void APServiceMessage_initWithNSString_withAPServiceEx_(APServiceMessage *self, NSString *text, APServiceEx *ext);

FOUNDATION_EXPORT APServiceMessage *new_APServiceMessage_initWithNSString_withAPServiceEx_(NSString *text, APServiceEx *ext) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APServiceMessage_init(APServiceMessage *self);

FOUNDATION_EXPORT APServiceMessage *new_APServiceMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APServiceMessage)

typedef APServiceMessage ImActorModelApiServiceMessage;

#endif // _APServiceMessage_H_
