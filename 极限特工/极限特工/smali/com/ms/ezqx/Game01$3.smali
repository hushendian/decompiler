.class Lcom/ms/ezqx/Game01$3;
.super Ljava/lang/Object;
.source "Game01.java"

# interfaces
.implements Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ms/ezqx/Game01;->initSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ms/ezqx/Game01;


# direct methods
.method constructor <init>(Lcom/ms/ezqx/Game01;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ms/ezqx/Game01$3;->this$0:Lcom/ms/ezqx/Game01;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------\u521d\u59cb\u5316\u6210\u529f--------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
