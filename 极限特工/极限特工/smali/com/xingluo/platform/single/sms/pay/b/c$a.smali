.class Lcom/xingluo/platform/single/sms/pay/b/c$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/c;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/c$a;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/c;->a(Lcom/xingluo/platform/single/sms/pay/b/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/c;->a(Lcom/xingluo/platform/single/sms/pay/b/c;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/c;->d(Lcom/xingluo/platform/single/sms/pay/b/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->e(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c$a;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->f(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    goto :goto_0
.end method
