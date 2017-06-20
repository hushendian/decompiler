.class Lcom/xingluo/platform/ad/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/XLInitAdsManager;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->gameInit()V

    :cond_0
    return-void
.end method
