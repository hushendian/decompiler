.class Lcom/xingluo/platform/ad/suspend/XLInitService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLInitService;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/ad/suspend/XLInitService;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$0(Lcom/xingluo/platform/ad/suspend/XLInitService;Z)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$0(Lcom/xingluo/platform/ad/suspend/XLInitService;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLInitService;->isHomeShow()Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$1(Lcom/xingluo/platform/ad/suspend/XLInitService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLInitService;->isAppOnForeground()Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$2(Lcom/xingluo/platform/ad/suspend/XLInitService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLInitService;->reStartApplication()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$3(Lcom/xingluo/platform/ad/suspend/XLInitService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLInitService$a;->a:Lcom/xingluo/platform/ad/suspend/XLInitService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLInitService;->isAppOnForeground()Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLInitService;->access$2(Lcom/xingluo/platform/ad/suspend/XLInitService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
