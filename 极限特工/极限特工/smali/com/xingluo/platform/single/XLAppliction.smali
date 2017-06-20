.class public Lcom/xingluo/platform/single/XLAppliction;
.super Landroid/app/Application;


# instance fields
.field private listener:Lcom/xingluo/platform/single/callback/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initProxyApplication()Lcom/xingluo/platform/single/callback/c;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/xingluo/platform/single/XLAppliction;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/XLAppliction;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_paySDK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "com.xingluo.platform.single.sdk.XLSingleSDKApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/callback/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/XLAppliction;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9519\u8bef\u63d0\u793a\uff1a\u8bf7\u68c0\u67e5\u662f\u5426\u52a0\u5165\u76f8\u5173\u5de5\u7a0b\u6587\u4ef6\u6216\u8005\u8bf7\u5c06AndroidManifest.xml\u6587\u4ef6\u4e2dxlsdk_paySDK\u8bbe\u7f6e\u4e3afalse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/XLAppliction;->initProxyApplication()Lcom/xingluo/platform/single/callback/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    invoke-interface {v0, p1}, Lcom/xingluo/platform/single/callback/c;->onProxyAttachBaseContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    invoke-interface {v0, p1}, Lcom/xingluo/platform/single/callback/c;->onProxyConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    invoke-static {}, Lcom/xingluo/platform/single/e/e;->a()Lcom/xingluo/platform/single/e/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/single/e/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/XLAppliction;->listener:Lcom/xingluo/platform/single/callback/c;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/c;->onProxyCreate()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xingluo/platform/single/e/e;->a()Lcom/xingluo/platform/single/e/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/e/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
