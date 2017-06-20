.class Lcom/xingluo/platform/ad/pojos/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/pojos/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/pojos/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/pojos/a;->a(Lcom/xingluo/platform/ad/pojos/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-static {v1}, Lcom/xingluo/platform/ad/pojos/a;->b(Lcom/xingluo/platform/ad/pojos/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-static {v2}, Lcom/xingluo/platform/ad/pojos/a;->c(Lcom/xingluo/platform/ad/pojos/a;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/ad/pojos/b;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-static {v3}, Lcom/xingluo/platform/ad/pojos/a;->d(Lcom/xingluo/platform/ad/pojos/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
