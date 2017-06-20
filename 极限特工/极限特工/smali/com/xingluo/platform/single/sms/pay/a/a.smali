.class public Lcom/xingluo/platform/single/sms/pay/a/a;
.super Lcom/xingluo/platform/single/pay/b;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field a:Lcom/xingluo/platform/single/util/i;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/xingluo/platform/single/order/Order;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 5
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

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->h:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->b:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->i:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->j:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->k:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/order/Order;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->e:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->d:Ljava/lang/String;

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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/f/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/c;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/a;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/single/sms/pay/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->a()V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/c;->b()V

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
