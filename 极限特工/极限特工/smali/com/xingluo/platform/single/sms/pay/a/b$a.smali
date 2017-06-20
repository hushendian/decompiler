.class Lcom/xingluo/platform/single/sms/pay/a/b$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/a/b$a;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001-->\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->e(Lcom/xingluo/platform/single/sms/pay/a/b;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->f(Lcom/xingluo/platform/single/sms/pay/a/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->e(Lcom/xingluo/platform/single/sms/pay/a/b;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->e(Lcom/xingluo/platform/single/sms/pay/a/b;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/a/b;->h(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/a/b;->i(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->l(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001-->\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->j(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->j(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b$a;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    goto :goto_0
.end method
