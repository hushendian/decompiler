.class Lcom/xingluo/platform/single/sms/pay/b/e$c;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/e;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/e;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->i(Lcom/xingluo/platform/single/sms/pay/b/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->j(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Lcom/xingluo/platform/single/sms/pay/b/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/e;->k(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->b(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/e;->k(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e$c;->a:Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->k(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/e;->b(Lcom/xingluo/platform/single/sms/pay/b/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
