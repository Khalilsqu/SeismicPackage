//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisTslice.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisTslice_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisTslice *module = new CpseisTslice();
    return (jlong)module;
  }
}