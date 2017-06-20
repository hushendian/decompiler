.class Lcom/xingluo/platform/single/sms/pay/g;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/g;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/g;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/d;->j(Lcom/xingluo/platform/single/sms/pay/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/g;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/d;->k(Lcom/xingluo/platform/single/sms/pay/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
