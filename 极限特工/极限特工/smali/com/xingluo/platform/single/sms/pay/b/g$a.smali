.class Lcom/xingluo/platform/single/sms/pay/b/g$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/g;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g$a;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/g$a;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g$a;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;

    move-result-object v0

    const/16 v1, 0x65

    const-string v2, "\u53d1\u9001\u77ed\u4fe1\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/sms/d/b$a;->a(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g$a;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->g(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g$a;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g$a;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->e(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
