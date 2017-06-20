.class Lcom/xingluo/platform/single/third/activity/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/activity/c;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/c;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # invokes: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payResultQuery()V
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$6(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15f90
        :pswitch_0
    .end packed-switch
.end method
