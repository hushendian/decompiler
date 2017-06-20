.class Lcom/xingluo/platform/single/sms/pay/b/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/g;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/h;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/h;)Lcom/xingluo/platform/single/sms/pay/b/g;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/h;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/i;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/i;-><init>(Lcom/xingluo/platform/single/sms/pay/b/h;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "code"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/h;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/g;->f(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/h;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/g;->b(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/d/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/xingluo/platform/single/sms/d/b;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/b$a;)V

    :cond_0
    return-void
.end method
