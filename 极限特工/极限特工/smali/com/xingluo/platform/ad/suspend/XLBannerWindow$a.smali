.class Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$16(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$17(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$18(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$17(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
