.class Lcom/xingluo/platform/gameplus/install/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/c;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/c;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    # getter for: Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I
    invoke-static {v0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->access$0(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->access$1(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/c;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    # getter for: Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->mCount:I
    invoke-static {v0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->access$0(Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/c;->a:Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/install/GPSilentInstallService;->stopSelf()V

    :cond_0
    return-void
.end method
