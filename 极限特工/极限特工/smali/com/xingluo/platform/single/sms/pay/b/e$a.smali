.class Lcom/xingluo/platform/single/sms/pay/b/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/e;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/e$a;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V

    sput-boolean v5, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->d(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->e(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/e$c;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/e;->f(Lcom/xingluo/platform/single/sms/pay/b/e;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xingluo/platform/single/sms/pay/b/e$c;-><init>(Lcom/xingluo/platform/single/sms/pay/b/e;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;Lcom/xingluo/platform/single/sms/pay/b/e$c;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->g(Lcom/xingluo/platform/single/sms/pay/b/e;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e$a;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/e;->h(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/b/e$c;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
