.class Lcom/xingluo/platform/single/sms/pay/b/e$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/e;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/e$b;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "\u6263\u8d39\u77ed\u4fe1\u53d1\u9001\u5931\u8d25,\u6263\u8d39\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sput-boolean v2, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->d(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->e(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "\u6263\u8d39\u77ed\u4fe1\u53d1\u9001\u6210\u529f,\u6263\u8d39\u751f\u6548"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sput-boolean v2, Lcom/xingluo/platform/single/order/Order;->k:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$b;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->d(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(ZZ)V

    goto :goto_0
.end method
