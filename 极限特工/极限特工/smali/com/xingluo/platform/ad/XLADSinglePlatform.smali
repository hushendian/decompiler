.class public Lcom/xingluo/platform/ad/XLADSinglePlatform;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/xingluo/platform/ad/XLADSinglePlatform;


# instance fields
.field private context:Landroid/content/Context;

.field private isLandFlag:Z

.field private logger:Lcom/xingluo/platform/single/util/i;

.field private xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/ad/XLADSinglePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->isLandFlag:Z

    return-void
.end method

.method public static getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->instance:Lcom/xingluo/platform/ad/XLADSinglePlatform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/XLADSinglePlatform;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->instance:Lcom/xingluo/platform/ad/XLADSinglePlatform;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->instance:Lcom/xingluo/platform/ad/XLADSinglePlatform;

    return-object v0
.end method


# virtual methods
.method public bdgameExit(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-static {p1, v0, p2}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Error"

    const-string v1, "Exit : param is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bdgamePause(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 3

    const-string v0, "isShow"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iget-boolean v2, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->isLandFlag:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showAdsViewDialog(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getLocationFileData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->isLandFlag:Z

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showAdsViewDialog(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "Error"

    const-string v1, "Pause : param is invalid!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, "Pause : param is invalid!!!"

    invoke-interface {p2, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getXlCrossRecommendData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    return-object v0
.end method

.method public init(Landroid/app/Activity;ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init ad start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->isLandFlag:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init ad fail,activity is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->context:Landroid/content/Context;

    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->initGamePlus(Landroid/app/Application;)V

    invoke-static {}, Lcom/xingluo/platform/ad/e/a;->a()Lcom/xingluo/platform/ad/e/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/e/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xingluo/platform/ad/f/d;->a()Lcom/xingluo/platform/ad/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/xingluo/platform/ad/f/d;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showLogo(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init ad end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->context:Landroid/content/Context;

    return-void
.end method

.method public setCrossRecommendData(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/XLADSinglePlatform;->xlCrossRecommendData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    return-void
.end method

.method public stopSuspenstionService(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->getInstance()Lcom/xingluo/platform/ad/suspend/XLServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->stopInitService(Landroid/content/Context;)V

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->getInstance()Lcom/xingluo/platform/ad/suspend/XLServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->stopSuspensionService(Landroid/content/Context;)V

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->getInstance()Lcom/xingluo/platform/ad/suspend/XLServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->stopBannerService(Landroid/content/Context;)V

    return-void
.end method
