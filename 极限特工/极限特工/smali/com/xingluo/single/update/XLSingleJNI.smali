.class public Lcom/xingluo/single/update/XLSingleJNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "xingluo-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native genDiff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native pacpatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
