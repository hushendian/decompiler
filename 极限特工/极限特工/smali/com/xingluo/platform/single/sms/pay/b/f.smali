.class Lcom/xingluo/platform/single/sms/pay/b/f;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/e;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->l(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/single/sms/pay/b/e;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(I)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/e;->d(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/c;->a(IZ)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/f;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->e(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    :cond_1
    return-void
.end method
