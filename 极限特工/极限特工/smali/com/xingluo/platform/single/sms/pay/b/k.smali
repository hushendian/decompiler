.class Lcom/xingluo/platform/single/sms/pay/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/b$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/g;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "\u83b7\u53d6\u552f\u4e00\u7801\u901a\u8baf\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/sms/d/b$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    const-string v1, "key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->b(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    const-string v1, "context"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->c(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/g$a;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/g$a;-><init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;Lcom/xingluo/platform/single/sms/pay/b/g$a;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->b(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->i(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/pay/b/g$a;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/g;->b(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->j(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/k;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/g;->k(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
