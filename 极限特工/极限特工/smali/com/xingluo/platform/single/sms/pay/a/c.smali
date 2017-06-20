.class Lcom/xingluo/platform/single/sms/pay/a/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/c;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/c;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/c;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->b(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/c;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    goto :goto_0
.end method
