.class public Lcom/xingluo/platform/ad/XLInitAdsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/XLInitAdsManager$a;
    }
.end annotation


# static fields
.field private static dlInfoFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static isLandFlag:Z

.field private static mCallBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field private static mInitAct:Landroid/app/Activity;


# instance fields
.field private LOGO_TIMER:J

.field private checkCount:I

.field igpDownloadCallbackListener:Lcom/xingluo/platform/gameplus/a/a/a;

.field private insertHandler:Landroid/os/Handler;

.field private mDialog:Landroid/app/Dialog;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->LOGO_TIMER:J

    new-instance v0, Lcom/xingluo/platform/ad/a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/a;-><init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->insertHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xingluo/platform/ad/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/b;-><init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->igpDownloadCallbackListener:Lcom/xingluo/platform/gameplus/a/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/XLInitAdsManager;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/ad/XLInitAdsManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->addDesktopIcon(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/XLInitAdsManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private addDesktopIcon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->g()I

    move-result v0

    sget-object v5, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    invoke-static {v5, v4, v0}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v4, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    invoke-static {v4, v2, v3, v0}, Lcom/xingluo/platform/ad/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private finishLoadLogo(Lcom/xingluo/platform/ad/view/XLLogoView;JLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->LOGO_TIMER:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->LOGO_TIMER:J

    sub-long v0, v2, v0

    :goto_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/xingluo/platform/ad/c;

    invoke-direct {v3, p0, p4}, Lcom/xingluo/platform/ad/c;-><init>(Lcom/xingluo/platform/ad/XLInitAdsManager;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0xbb8

    goto :goto_0
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApkIconLoader"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGPInsertsData(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->setCommonInsertData(Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;)Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getInsertsData(Landroid/content/Context;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/util/List;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v4, v5

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    :goto_1
    return-object v3

    :cond_0
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    if-eqz p4, :cond_a

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->g()I

    move-result v6

    invoke-static {p1, v2, v6}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_a

    move v6, v5

    move-object v2, v1

    :goto_2
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_4

    :cond_1
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v1, v5

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    move v1, v5

    :goto_5
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    move-object v0, v2

    move-object v1, v3

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->setCommonInsertData(Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;)Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    goto :goto_7

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_8
    if-gt v6, v1, :cond_5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_8

    :cond_7
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_6

    :cond_b
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/xingluo/platform/ad/XLInitAdsManager;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager$a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    return-object v0
.end method

.method public static getInstatceAndSetParam(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)Lcom/xingluo/platform/ad/XLInitAdsManager;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager$a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->ready(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager$a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    return-object v0
.end method

.method private getStatisticsGamesId(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_4

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private initSetSharedPreferences()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBanShowFinish"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isInsertView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isPayViewShow"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private isGamePlusDataValid()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/single/util/y;->f:Ljava/lang/String;

    sget-object v3, Lcom/xingluo/platform/single/util/y;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/gameplus/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/gameplus/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private refreshStatisticsLog(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Lcom/xingluo/platform/single/util/y;->g:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v1, "download_num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/util/y;->g:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/util/y;->g:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v1, "install_num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    sget-object v0, Lcom/xingluo/platform/single/util/y;->g:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    aget-object v3, v1, v0

    const-string v4, "install_num"

    const-string v5, ""

    invoke-static {v4, v3, v5, v6}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "install_num"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v2, v3, v6}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_1
.end method

.method private setCommonInsertData(Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;)Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;
    .locals 3

    new-instance v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->j(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->h(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->a(I)V

    return-object v0
.end method

.method private showAdsOrNoticeViewDialog(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->isGamePlusDataValid()Z

    move-result v0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->j()Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/xingluo/platform/ad/view/f;

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->j()Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/xingluo/platform/ad/view/f;-><init>(Landroid/content/Context;Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;Z)V

    invoke-static {}, Lcom/xingluo/platform/ad/pojos/a;->a()Lcom/xingluo/platform/ad/pojos/a;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "Init Ad: success!!!"

    invoke-interface {p3, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcom/xingluo/platform/ad/view/a;

    sget-object v2, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInsertsData(Landroid/content/Context;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p1, v0, p4}, Lcom/xingluo/platform/ad/view/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v1, Lcom/xingluo/platform/ad/c/a;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {}, Lcom/xingluo/platform/ad/pojos/a;->a()Lcom/xingluo/platform/ad/pojos/a;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->g()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/xingluo/platform/ad/view/a;

    sget-object v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getGPInsertsData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/xingluo/platform/ad/view/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {}, Lcom/xingluo/platform/ad/pojos/a;->a()Lcom/xingluo/platform/ad/pojos/a;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/pojos/a;->a()Lcom/xingluo/platform/ad/pojos/a;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public gameInit()V
    .locals 4

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getXlCrossRecommendData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->isLandFlag:Z

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showAdsInit(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Z)V

    invoke-static {}, Lcom/xingluo/platform/ad/f/d;->a()Lcom/xingluo/platform/ad/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/d;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getLocationFileData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->isLandFlag:Z

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showAdsInit(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Z)V

    invoke-static {}, Lcom/xingluo/platform/ad/f/d;->a()Lcom/xingluo/platform/ad/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/d;->b()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->checkCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/xingluo/platform/ad/f/d;->a()Lcom/xingluo/platform/ad/f/d;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    sget-object v2, Lcom/xingluo/platform/ad/XLInitAdsManager;->mCallBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    sget-boolean v3, Lcom/xingluo/platform/ad/XLInitAdsManager;->isLandFlag:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/ad/f/d;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    iget v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->checkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->checkCount:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/ad/f/d;->a()Lcom/xingluo/platform/ad/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/d;->b()V

    goto :goto_0
.end method

.method public getInsertHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->insertHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLocationFileData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->d:Ljava/lang/String;

    sget-object v2, Lcom/xingluo/platform/single/util/y;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public initGamePlus(Landroid/app/Application;)V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    const-string v1, "BMG_OFFLINE"

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/xingluo/platform/gameplus/a/c;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->igpDownloadCallbackListener:Lcom/xingluo/platform/gameplus/a/a/a;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/a/c;->a(Lcom/xingluo/platform/gameplus/a/a/a;)V

    return-void
.end method

.method public ready(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sput-object p1, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    sput-object p2, Lcom/xingluo/platform/ad/XLInitAdsManager;->mCallBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    sput-boolean p3, Lcom/xingluo/platform/ad/XLInitAdsManager;->isLandFlag:Z

    :cond_0
    return-void
.end method

.method public showAdsInit(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/l;->a()Lcom/xingluo/platform/ad/suspend/l;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/xingluo/platform/ad/suspend/l;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->initSetSharedPreferences()V

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mInitAct:Landroid/app/Activity;

    sget-object v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->mCallBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->showAdsOrNoticeViewDialog(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->refreshStatisticsLog(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    return-void
.end method

.method public showAdsViewDialog(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->isGamePlusDataValid()Z

    move-result v0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/xingluo/platform/ad/view/a;

    sget-object v2, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInsertsData(Landroid/content/Context;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p1, v0, p4}, Lcom/xingluo/platform/ad/view/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v1, Lcom/xingluo/platform/ad/c/a;->a:Lcom/xingluo/platform/ad/view/a;

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "Pause : success!!!"

    invoke-interface {p3, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->g()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/xingluo/platform/ad/view/a;

    sget-object v1, Lcom/xingluo/platform/ad/XLInitAdsManager;->dlInfoFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getGPInsertsData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/xingluo/platform/ad/view/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->a:Lcom/xingluo/platform/ad/view/a;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/pojos/a;->a()Lcom/xingluo/platform/ad/pojos/a;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showLogo(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-direct {v0, p1}, Lcom/xingluo/platform/ad/view/XLLogoView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/Dialog;

    const-string v2, "XL.Theme.NoBackGround"

    invoke-static {p1, v2}, Lcom/xingluo/platform/single/util/r;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->startTime:J

    iget-wide v1, p0, Lcom/xingluo/platform/ad/XLInitAdsManager;->startTime:J

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->finishLoadLogo(Lcom/xingluo/platform/ad/view/XLLogoView;JLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    :cond_0
    return-void
.end method
