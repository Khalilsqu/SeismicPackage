//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisRegbin.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisRegbin_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisRegbin *module = new CpseisRegbin();
    return (jlong)module;
  }
}