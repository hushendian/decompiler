.class Lcom/xingluo/platform/ad/f/d$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/xingluo/platform/ad/f/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/f/d;)V
    .locals 3

    iput-object p1, p0, Lcom/xingluo/platform/ad/f/d$a;->b:Lcom/xingluo/platform/ad/f/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {p1}, Lcom/xingluo/platform/ad/f/d;->a(Lcom/xingluo/platform/ad/f/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/xingluo/platform/ad/f/d;->b(Lcom/xingluo/platform/ad/f/d;)Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v1

    invoke-static {p1}, Lcom/xingluo/platform/ad/f/d;->c(Lcom/xingluo/platform/ad/f/d;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInstatceAndSetParam(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)Lcom/xingluo/platform/ad/XLInitAdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->getInsertHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/d$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/f/d$a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
