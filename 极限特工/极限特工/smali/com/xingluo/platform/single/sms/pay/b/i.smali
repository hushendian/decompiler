.class Lcom/xingluo/platform/single/sms/pay/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/b$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/h;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;

    move-result-object v0

    const/16 v1, 0x68

    const-string v2, "\u901a\u8baf\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/sms/d/b$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "phoneimsi"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v3

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/g;->b(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/xingluo/platform/single/sms/d/b$a;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->d(Lcom/xingluo/platform/single/sms/pay/b/g;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->d(Lcom/xingluo/platform/single/sms/pay/b/g;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->e(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/i;->a:Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/h;->a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;

    move-result-object v0

    const/16 v1, 0x67

    const-string v2, "\u8f6e\u8be2\u8d85\u51fa\u6b21\u6570"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/sms/d/b$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
