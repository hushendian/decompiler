.class public Lcom/xingluo/platform/ad/suspend/XLSuspensionService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;
    }
.end annotation


# static fields
.field private static final BANK_COMPONENT_NAME:Ljava/lang/String; = "com.unionpay.uppay"

.field private static final MO9_COMPONENT_NAME:Ljava/lang/String; = "com.mokredit.payment.MktPayment"

.field private static final PAYMNET_CENTER_NAME:Ljava/lang/String; = "com.duoku.platform.ui.XLPaymentCenterActivity"

.field private static final REFRESH_TIME_INTERVAL:I = 0x320

.field private static final TAG:Ljava/lang/String; = "XLSuspensionService"


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private isAppStop:Z

.field private mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private mIntent:Landroid/content/Intent;

.field private suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

.field private suspensionTimer:Ljava/util/Timer;

.field private suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isAppStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isAppStop:Z

    return-void
.end method

.method static synthetic access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isHomeShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getHomeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initSuspensionWindow()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xingluo/platform/ad/suspend/s;->a(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :cond_0
    return-void
.end method

.method private isAppOnForeground(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHomeShow()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getHomeList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private reStartApplication(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->stopSelf()V

    return-void
.end method

.method private reStartService()V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->getInstance()Lcom/xingluo/platform/ad/suspend/XLServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/ad/suspend/XLServiceManager;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public initService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iput-object p2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mIntent:Landroid/content/Intent;

    const-string v1, "corss_recomend_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->activityManager:Landroid/app/ActivityManager;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->initSuspensionWindow()V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x320

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isAppStop:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->e()V

    iput-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->cancel()Z

    iput-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTask:Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionTimer:Ljava/util/Timer;

    :cond_2
    invoke-virtual {p0, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->stopForeground(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0, p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->initService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->initService(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
