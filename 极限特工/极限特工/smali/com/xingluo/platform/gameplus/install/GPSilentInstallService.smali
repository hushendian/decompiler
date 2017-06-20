.class public Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;
.super Landroid/app/Service;


# static fields
.field public static final EXTRA_INSTALLER_PACK:Ljava/lang/String; = "arg_pack"

.field private static final TAG:Ljava/lang/String; = "GPSilentInstallService"


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInstallHandler:Landroid/os/Handler;

.field private mInstallThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->installSilent(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    return-void
.end method

.method static synthetic access$3(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private installSilent(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "tim"

    const-string v2, "\u9759\u9ed8\u5b89\u88c5\u6210\u529f\u7edf\u8ba1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "tim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9759\u9ed8\u5b89\u88c5\u7ed3\u679c\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/xingluo/platform/gameplus/broadcast/a;->a()Lcom/xingluo/platform/gameplus/broadcast/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xingluo/platform/gameplus/broadcast/a;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "GPSilentInstallService"

    const-string v1, "[SilentInstallService#onCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xingluo/platform/gameplus/install/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/install/c;-><init>(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xingluo/platform/gameplus/install/d;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/gameplus/install/d;-><init>(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v0, "GPSilentInstallService"

    const-string v1, "[SilentInstallService#onStartCommand]"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "arg_pack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    const-string v1, "GPSilentInstallService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStartCommand data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mInstallHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "GPSilentInstallService"

    const-string v1, "install handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
