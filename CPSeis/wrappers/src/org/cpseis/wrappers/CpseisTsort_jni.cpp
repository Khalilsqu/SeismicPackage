//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisTsort.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisTsort_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisTsort *module = new CpseisTsort();
    return (jlong)module;
  }
}