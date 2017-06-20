.class public Lcom/xingluo/single/update/XLSingleUpdateManager;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/xingluo/single/update/XLSingleUpdateManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doUpdate(Landroid/app/Activity;Lcom/xingluo/single/update/AppInfo;ILcom/xingluo/single/update/listener/b;)V
    .locals 3

    const-string v0, "xingluo0908"

    const-string v1, "doUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3}, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;-><init>(Landroid/os/Handler;Lcom/xingluo/single/update/listener/b;)V

    invoke-static {v0, p1, v1, p2}, Lcom/xingluo/single/update/service/CheckUpdateService;->startDownload(Landroid/content/Context;Lcom/xingluo/single/update/AppInfo;Lcom/xingluo/single/update/receiver/DownloadResultReceiver;I)V

    return-void
.end method

.method public static getInstance()Lcom/xingluo/single/update/XLSingleUpdateManager;
    .locals 1

    sget-object v0, Lcom/xingluo/single/update/XLSingleUpdateManager;->instance:Lcom/xingluo/single/update/XLSingleUpdateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/single/update/XLSingleUpdateManager;

    invoke-direct {v0}, Lcom/xingluo/single/update/XLSingleUpdateManager;-><init>()V

    sput-object v0, Lcom/xingluo/single/update/XLSingleUpdateManager;->instance:Lcom/xingluo/single/update/XLSingleUpdateManager;

    :cond_0
    sget-object v0, Lcom/xingluo/single/update/XLSingleUpdateManager;->instance:Lcom/xingluo/single/update/XLSingleUpdateManager;

    return-object v0
.end method


# virtual methods
.method public checkHasNewVerision(Lcom/xingluo/single/update/listener/CheckUpdateListener;)V
    .locals 2

    const-string v0, "xingluo0908"

    const-string v1, "checkHasNewVerision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xingluo/single/update/service/CheckUpdateService;->checkUpdate(Lcom/xingluo/single/update/listener/CheckUpdateListener;)V

    return-void
.end method

.method public checkUpdate(Landroid/app/Activity;ZLcom/xingluo/single/update/listener/CheckUpdateListener;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/xingluo/single/update/b/a;->a(Landroid/app/Activity;Z)V

    const-string v0, "xingluo0908"

    const-string v1, "checkUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/xingluo/single/update/service/CheckUpdateService;->checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/single/update/listener/CheckUpdateListener;)V

    return-void
.end method

.method public downloadNewVersion()V
    .locals 2

    const-string v0, "xingluo0908"

    const-string v1, "downloadNewVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xingluo/single/update/service/CheckUpdateService;->downloadNewVersion()V

    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xingluo/single/update/b/a;->a(Landroid/app/Activity;Z)V

    return-void
.end method
