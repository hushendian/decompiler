.class Lcom/xingluo/platform/gameplus/install/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/d;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/d;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    # invokes: Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->installSilent(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->access$2(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/d;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    # getter for: Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->access$3(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSilentInstallService"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
