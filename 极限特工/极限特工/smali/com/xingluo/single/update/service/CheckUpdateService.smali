.class public Lcom/xingluo/single/update/service/CheckUpdateService;
.super Lcom/xingluo/single/update/service/a;


# static fields
.field private static final ACTION_CHECKUPDATE:Ljava/lang/String; = "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATE"

.field private static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOAD"

.field private static final ACTION_INSTALLSLIENT:Ljava/lang/String; = "com.xingluo.single.checkupdate.sdk.ACTION_INSTALL"

.field private static final DDZ_ACTION_CHECKUPDATE:Ljava/lang/String; = "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATEDDZ"

.field private static final DDZ_ACTION_DOWNLOAD:Ljava/lang/String; = "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOADDDZ"

.field private static final TAG:Ljava/lang/String; = "CheckUpdateService"

.field public static checkUpdateListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xingluo/single/update/listener/CheckUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->checkUpdateListener:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CheckUpdateService"

    invoke-direct {p0, v0}, Lcom/xingluo/single/update/service/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/single/update/service/CheckUpdateService;Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static addCheckUpdateListener(ILcom/xingluo/single/update/listener/CheckUpdateListener;)V
    .locals 2

    sget-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->checkUpdateListener:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/single/update/listener/CheckUpdateListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2, p2}, Lcom/xingluo/single/update/service/CheckUpdateService;->addCheckUpdateListener(ILcom/xingluo/single/update/listener/CheckUpdateListener;)V

    invoke-static {}, Lcom/xingluo/single/update/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/single/update/service/CheckUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "no network"

    invoke-interface {v0, v2, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static checkUpdate(Lcom/xingluo/single/update/listener/CheckUpdateListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/xingluo/single/update/service/CheckUpdateService;->addCheckUpdateListener(ILcom/xingluo/single/update/listener/CheckUpdateListener;)V

    invoke-static {}, Lcom/xingluo/single/update/b/a;->j()Lcom/xingluo/single/update/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/single/update/b/a;->j()Lcom/xingluo/single/update/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/single/update/AppInfo;->isNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "have update package"

    invoke-interface {v0, v2, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "no update package"

    invoke-interface {v0, v3, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xingluo/single/update/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "xingluo0908"

    const-string v1, "checkUpdate:Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xingluo/single/update/service/CheckUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATEDDZ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "no network"

    invoke-interface {v0, v3, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private ddzCheckUpdate()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/xingluo/single/update/b/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xingluo0908:packageName"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "package is null"

    invoke-interface {v0, v6, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xingluo/single/update/a/a;->a()Lcom/xingluo/single/update/a/a;

    move-result-object v1

    invoke-static {v0}, Lcom/xingluo/single/update/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/single/update/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://patch.sdk.xl-game.cn/sdkUpdate/checkupdate"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xingluo/single/update/b/b;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "server response is null"

    invoke-interface {v2, v3, v4}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xingluo/single/update/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "no network"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v5}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Lcom/xingluo/single/update/AppInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/xingluo/single/update/AppInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->isNewVersion()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "no update package"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/xingluo/single/update/b/a;->a(Lcom/xingluo/single/update/AppInfo;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "have update package"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doCheckUpdate(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CheckUpdateService"

    const-string v1, "app is downloading!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "CheckUpdateService"

    const-string v1, "packageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "packageName is null!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xingluo/single/update/a/a;->a()Lcom/xingluo/single/update/a/a;

    move-result-object v1

    invoke-static {v0}, Lcom/xingluo/single/update/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/single/update/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://patch.sdk.xl-game.cn/sdkUpdate/checkupdate"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xingluo/single/update/b/b;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "checkUpdate response is null!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xingluo/single/update/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "CheckUpdateService"

    const-string v1, "checkUpdate response is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "checkUpdate response is null!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/xingluo/single/update/AppInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/xingluo/single/update/AppInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->isNewVersion()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "no new version!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Lcom/xingluo/single/update/b/a;->a(Lcom/xingluo/single/update/AppInfo;)V

    sget-boolean v0, Lcom/xingluo/single/update/b/a;->b:Z

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->isReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "updateInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private doDownload(Landroid/content/Intent;)V
    .locals 13

    const/4 v1, -0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    sget-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CheckUpdateService"

    const-string v1, "package is downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v0, "event"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "ResultReceiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const-string v1, "xingluo0908:doDownload:resultReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "appInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xingluo/single/update/AppInfo;

    if-nez v1, :cond_1

    const-string v1, "info"

    const-string v2, "appInfo is null"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "appInfo"

    invoke-virtual {v7, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v8, v3}, Lcom/xingluo/single/update/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v8, v3}, Lcom/xingluo/single/update/b/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "CheckUpdateService"

    const-string v2, "update path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "info"

    const-string v2, "update path is null"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v3, "progress"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "max"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->isPatch()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v4

    :goto_1
    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-static {p0, v8}, Lcom/xingluo/single/update/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    new-instance v3, Lcom/xingluo/single/update/service/b;

    invoke-direct {v3, p0, v7, v0}, Lcom/xingluo/single/update/service/b;-><init>(Lcom/xingluo/single/update/service/CheckUpdateService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-static {p0, v8, v2, v3}, Lcom/xingluo/single/update/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/xingluo/single/update/b/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "-----------------------------"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "chmod 755 "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "chmod 755 "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lcom/xingluo/single/update/AppInfo;->isPatch()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v5}, Lcom/xingluo/single/update/b/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p0, v2, v1}, Lcom/xingluo/single/update/service/CheckUpdateService;->startInstallSilent(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/single/update/AppInfo;)V

    :goto_4
    const-string v1, "info"

    const-string v2, "\u4e0b\u8f7d\u6210\u529f"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "success!"

    invoke-interface {v1, v2, v3}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    move-object v3, v5

    goto/16 :goto_1

    :cond_8
    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/i;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "info"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v6}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "fail!"

    invoke-interface {v1, v2, v3}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/xingluo/single/update/b/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v1, "CheckUpdateService"

    const-string v2, "installPath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "info"

    const-string v2, "installPath is null"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sget-object v1, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "chmod 755 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v3

    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_5
    :try_start_c
    invoke-static {v2, v5, v4}, Lcom/xingluo/single/update/XLSingleJNI;->pacpatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CheckUpdateService"

    const-string v3, "patch is success!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/xingluo/single/update/b/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, p0, v5, v1}, Lcom/xingluo/single/update/service/CheckUpdateService;->startInstallSilent(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/single/update/AppInfo;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/xingluo/single/update/service/CheckUpdateService;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v12, v7}, Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    throw v1

    :cond_b
    :try_start_d
    invoke-static {p0, v5}, Lcom/xingluo/single/update/b/i;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_3

    :catch_3
    move-exception v3

    goto :goto_5
.end method

.method private doInstallSlient(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "appInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "packagePath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/xingluo/single/update/b/i;->a(Landroid/content/Context;Lcom/xingluo/single/update/AppInfo;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/i;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/i;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/single/update/b/i;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xingluo/single/update/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static downloadNewVersion()V
    .locals 3

    invoke-static {}, Lcom/xingluo/single/update/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/single/update/b/a;->j()Lcom/xingluo/single/update/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xingluo/single/update/service/CheckUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOADDDZ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;
    .locals 2

    sget-object v0, Lcom/xingluo/single/update/service/CheckUpdateService;->checkUpdateListener:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/single/update/listener/CheckUpdateListener;

    return-object v0
.end method

.method private sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static startDownload(Landroid/content/Context;Lcom/xingluo/single/update/AppInfo;Lcom/xingluo/single/update/receiver/DownloadResultReceiver;I)V
    .locals 3

    invoke-static {}, Lcom/xingluo/single/update/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/single/update/service/CheckUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "ResultReceiver"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "event"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "no network"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private startInstallSilent(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/single/update/AppInfo;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/single/update/service/CheckUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appInfo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "packagePath"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public ddzStartDownload()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "updateInfo"

    invoke-static {}, Lcom/xingluo/single/update/b/a;->j()Lcom/xingluo/single/update/AppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "ddzupdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public doStartApp(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/xingluo/single/update/b/i;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/single/update/b/i;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xingluo/single/update/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected onAbstractHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xingluo0908"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xingluo/single/update/service/CheckUpdateService;->doCheckUpdate(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xingluo/single/update/service/CheckUpdateService;->doDownload(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_INSTALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/xingluo/single/update/service/CheckUpdateService;->doInstallSlient(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_CHECKUPDATEDDZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/xingluo/single/update/service/CheckUpdateService;->ddzCheckUpdate()V

    goto :goto_0

    :cond_3
    const-string v1, "com.xingluo.single.checkupdate.sdk.ACTION_DOWNLOADDDZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xingluo/single/update/service/CheckUpdateService;->ddzStartDownload()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "action is not find!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method
