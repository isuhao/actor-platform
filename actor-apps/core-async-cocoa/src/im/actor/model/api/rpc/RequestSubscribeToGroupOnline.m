//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSubscribeToGroupOnline.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeToGroupOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APRequestSubscribeToGroupOnline () {
 @public
  id<JavaUtilList> groups_;
}

@end

J2OBJC_FIELD_SETTER(APRequestSubscribeToGroupOnline, groups_, id<JavaUtilList>)

@implementation APRequestSubscribeToGroupOnline

+ (APRequestSubscribeToGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestSubscribeToGroupOnline_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups {
  APRequestSubscribeToGroupOnline_initWithJavaUtilList_(self, groups);
  return self;
}

- (instancetype)init {
  APRequestSubscribeToGroupOnline_init(self);
  return self;
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_groups addWithId:new_APGroupOutPeer_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_groups];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->groups_];
}

- (NSString *)description {
  NSString *res = @"rpc SubscribeToGroupOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groups=", [((id<JavaUtilList>) nil_chk(self->groups_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestSubscribeToGroupOnline_HEADER;
}

@end

APRequestSubscribeToGroupOnline *APRequestSubscribeToGroupOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestSubscribeToGroupOnline_initialize();
  return ((APRequestSubscribeToGroupOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestSubscribeToGroupOnline_init(), data));
}

void APRequestSubscribeToGroupOnline_initWithJavaUtilList_(APRequestSubscribeToGroupOnline *self, id<JavaUtilList> groups) {
  (void) APRequest_init(self);
  self->groups_ = groups;
}

APRequestSubscribeToGroupOnline *new_APRequestSubscribeToGroupOnline_initWithJavaUtilList_(id<JavaUtilList> groups) {
  APRequestSubscribeToGroupOnline *self = [APRequestSubscribeToGroupOnline alloc];
  APRequestSubscribeToGroupOnline_initWithJavaUtilList_(self, groups);
  return self;
}

void APRequestSubscribeToGroupOnline_init(APRequestSubscribeToGroupOnline *self) {
  (void) APRequest_init(self);
}

APRequestSubscribeToGroupOnline *new_APRequestSubscribeToGroupOnline_init() {
  APRequestSubscribeToGroupOnline *self = [APRequestSubscribeToGroupOnline alloc];
  APRequestSubscribeToGroupOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestSubscribeToGroupOnline)
