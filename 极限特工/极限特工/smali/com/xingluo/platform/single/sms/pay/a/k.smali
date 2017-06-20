.class public Lcom/xingluo/platform/single/sms/pay/a/k;
.super Lcom/xingluo/platform/single/pay/b;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field a:Lcom/xingluo/platform/single/util/i;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/xingluo/platform/single/order/Order;

.field f:Lcom/xingluo/platform/single/net/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xingluo/platform/single/pay/PayParameter;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->A:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->b:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->B:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->c:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->C:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->d:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->D:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/order/Order;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->i()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_YFKJ:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a/b;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->f:Lcom/xingluo/platform/single/net/a/b;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inner:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->f:Lcom/xingluo/platform/single/net/a/b;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/net/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->f:Lcom/xingluo/platform/single/net/a/b;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/net/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->f:Lcom/xingluo/platform/single/net/a/b;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/net/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither dest nor code can be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/e;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->e:Lcom/xingluo/platform/single/order/Order;

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/pay/a/k;->f:Lcom/xingluo/platform/single/net/a/b;

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/single/sms/pay/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/net/a/b;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->a()V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->b()V

    return-void
.end method

.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 0

    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method
