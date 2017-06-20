.class public Lcom/xingluo/platform/gameplus/service/GPDownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.xingluo.platform.gameplus.service"

.field private static final TAG:Ljava/lang/String; = "tim"


# instance fields
.field private connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

.field private handler:Landroid/os/Handler;

.field private final mBinder:Lcom/xingluo/platform/gameplus/service/c$a;

.field private maps:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/gameplus/download/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xingluo/platform/gameplus/service/a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/service/a;-><init>(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->mBinder:Lcom/xingluo/platform/gameplus/service/c$a;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/gameplus/service/GPDownloadService;Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->addDownloadImpl(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Ljava/util/TreeMap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    return-object v0
.end method

.method private addDownloadImpl(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/d;

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/gameplus/download/d;->a(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exist in queue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->isGprs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->a()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add to queue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/xingluo/platform/gameplus/download/d;-><init>(Ljava/util/TreeMap;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/gameplus/download/d;->a(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addDownloadImpl(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            ">;",
            "Lcom/xingluo/platform/gameplus/mode/AidlListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-direct {p0, v0, p2}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->addDownloadImpl(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    goto :goto_0
.end method


# virtual methods
.method public isGprs()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isWifi()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "tim"

    const-string v1, "there is a client bind to downloadService!"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->mBinder:Lcom/xingluo/platform/gameplus/service/c$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "tim"

    const-string v1, "downloadService onCreate()!"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->registerReveiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->unRegisterReveiver()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "tim"

    const-string v1, "downloadService onDestroyed()!"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/gameplus/download/d;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/d;->b()V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->c()V

    goto :goto_0
.end method

.method public registerReveiver()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->unRegisterReveiver()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;-><init>(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)V

    iput-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    invoke-virtual {p0, v1, v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unRegisterReveiver()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->connectionChangeReceiver:Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "tim"

    const-string v1, "there is a client unbind from downloadService!"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
