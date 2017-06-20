.class Lcom/xingluo/platform/single/sms/pay/b/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/m;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/m;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/m;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->b(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
