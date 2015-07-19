//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestRemoveContact.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestRemoveContact () {
 @public
  jint uid_;
  jlong accessHash_;
}

@end

@implementation APRequestRemoveContact

+ (APRequestRemoveContact *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestRemoveContact_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash {
  APRequestRemoveContact_initWithInt_withLong_(self, uid, accessHash);
  return self;
}

- (instancetype)init {
  APRequestRemoveContact_init(self);
  return self;
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (NSString *)description {
  NSString *res = @"rpc RemoveContact{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestRemoveContact_HEADER;
}

@end

APRequestRemoveContact *APRequestRemoveContact_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestRemoveContact_initialize();
  return ((APRequestRemoveContact *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestRemoveContact_init(), data));
}

void APRequestRemoveContact_initWithInt_withLong_(APRequestRemoveContact *self, jint uid, jlong accessHash) {
  (void) APRequest_init(self);
  self->uid_ = uid;
  self->accessHash_ = accessHash;
}

APRequestRemoveContact *new_APRequestRemoveContact_initWithInt_withLong_(jint uid, jlong accessHash) {
  APRequestRemoveContact *self = [APRequestRemoveContact alloc];
  APRequestRemoveContact_initWithInt_withLong_(self, uid, accessHash);
  return self;
}

void APRequestRemoveContact_init(APRequestRemoveContact *self) {
  (void) APRequest_init(self);
}

APRequestRemoveContact *new_APRequestRemoveContact_init() {
  APRequestRemoveContact *self = [APRequestRemoveContact alloc];
  APRequestRemoveContact_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestRemoveContact)
