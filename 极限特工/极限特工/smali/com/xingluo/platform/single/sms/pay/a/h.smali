.class Lcom/xingluo/platform/single/sms/pay/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->u(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->r(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_0

    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const-string v1, "orderid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const-string v1, "paychannel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->d(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0, p1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6d41\u7a0b\u96c6\u5408\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->s(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->s(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->t(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/h;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    goto :goto_0
.end method
