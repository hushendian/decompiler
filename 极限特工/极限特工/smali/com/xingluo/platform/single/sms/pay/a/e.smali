.class Lcom/xingluo/platform/single/sms/pay/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/b$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->f(Lcom/xingluo/platform/single/sms/pay/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->o(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->p(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, v1, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " requestOrder---phone===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/e;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V

    return-void
.end method
