.class Lcom/xingluo/platform/single/sms/pay/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->j(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->t(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "start send onSuccess"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;Z)V

    sput-boolean v3, Lcom/xingluo/platform/single/order/Order;->k:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->s(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/sms/pay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->h(Lcom/xingluo/platform/single/sms/pay/b/l;)Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(ZZ)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/s;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->d(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    return-void
.end method
