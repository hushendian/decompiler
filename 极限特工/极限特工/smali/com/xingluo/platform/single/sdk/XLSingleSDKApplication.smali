.class public Lcom/xingluo/platform/single/sdk/XLSingleSDKApplication;
.super Landroid/app/Application;

# interfaces
.implements Lcom/xingluo/platform/single/callback/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/secneo/mmb/Helper;->install(Landroid/app/Application;)V

    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onProxyCreate()V
    .locals 0

    return-void
.end method
