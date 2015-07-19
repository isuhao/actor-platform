//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestValidateCode.java
//

#ifndef _APRequestValidateCode_H_
#define _APRequestValidateCode_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestValidateCode_HEADER 189

@interface APRequestValidateCode : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)transactionHash
                    withNSString:(NSString *)code;

+ (APRequestValidateCode *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getCode;

- (jint)getHeaderKey;

- (NSString *)getTransactionHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestValidateCode)

J2OBJC_STATIC_FIELD_GETTER(APRequestValidateCode, HEADER, jint)

FOUNDATION_EXPORT APRequestValidateCode *APRequestValidateCode_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestValidateCode_initWithNSString_withNSString_(APRequestValidateCode *self, NSString *transactionHash, NSString *code);

FOUNDATION_EXPORT APRequestValidateCode *new_APRequestValidateCode_initWithNSString_withNSString_(NSString *transactionHash, NSString *code) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestValidateCode_init(APRequestValidateCode *self);

FOUNDATION_EXPORT APRequestValidateCode *new_APRequestValidateCode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestValidateCode)

typedef APRequestValidateCode ImActorModelApiRpcRequestValidateCode;

#endif // _APRequestValidateCode_H_
