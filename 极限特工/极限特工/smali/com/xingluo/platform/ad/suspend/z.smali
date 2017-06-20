.class Lcom/xingluo/platform/ad/suspend/z;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/z;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
