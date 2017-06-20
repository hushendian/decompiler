.class Lcom/xingluo/platform/single/sms/pay/b/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c(Lcom/xingluo/platform/single/sms/pay/b/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->d(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/l;->e(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/n;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/l;->f(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
