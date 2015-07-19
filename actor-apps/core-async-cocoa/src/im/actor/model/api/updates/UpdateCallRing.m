//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateCallRing.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/updates/UpdateCallRing.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateCallRing () {
 @public
  APUser *user_;
  NSString *callId_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateCallRing, user_, APUser *)
J2OBJC_FIELD_SETTER(APUpdateCallRing, callId_, NSString *)

@implementation APUpdateCallRing

+ (APUpdateCallRing *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateCallRing_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPUser:(APUser *)user
                  withNSString:(NSString *)callId {
  APUpdateCallRing_initWithAPUser_withNSString_(self, user, callId);
  return self;
}

- (instancetype)init {
  APUpdateCallRing_init(self);
  return self;
}

- (APUser *)getUser {
  return self->user_;
}

- (NSString *)getCallId {
  return self->callId_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->user_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APUser_init()];
  self->callId_ = [values getStringWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->user_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->user_];
  if (self->callId_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->callId_];
}

- (NSString *)description {
  NSString *res = @"update CallRing{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateCallRing_HEADER;
}

@end

APUpdateCallRing *APUpdateCallRing_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateCallRing_initialize();
  return ((APUpdateCallRing *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateCallRing_init(), data));
}

void APUpdateCallRing_initWithAPUser_withNSString_(APUpdateCallRing *self, APUser *user, NSString *callId) {
  (void) APUpdate_init(self);
  self->user_ = user;
  self->callId_ = callId;
}

APUpdateCallRing *new_APUpdateCallRing_initWithAPUser_withNSString_(APUser *user, NSString *callId) {
  APUpdateCallRing *self = [APUpdateCallRing alloc];
  APUpdateCallRing_initWithAPUser_withNSString_(self, user, callId);
  return self;
}

void APUpdateCallRing_init(APUpdateCallRing *self) {
  (void) APUpdate_init(self);
}

APUpdateCallRing *new_APUpdateCallRing_init() {
  APUpdateCallRing *self = [APUpdateCallRing alloc];
  APUpdateCallRing_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateCallRing)
