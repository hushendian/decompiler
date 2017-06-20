.class Lcom/xingluo/platform/single/sms/pay/b/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/c;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->g(Lcom/xingluo/platform/single/sms/pay/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/c;->b(Lcom/xingluo/platform/single/sms/pay/b/c;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/single/sms/pay/b/c;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/c;->a(I)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/c;->d(Lcom/xingluo/platform/single/sms/pay/b/c;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/c;->a(IZ)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/d;->a:Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->e(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    :cond_1
    return-void
.end method
