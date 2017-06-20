.class Lcom/xingluo/platform/single/sms/pay/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/b$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->h(Lcom/xingluo/platform/single/sms/pay/b/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->i(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->j(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->k(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " requestOrder---phone===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/o;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V

    return-void
.end method
