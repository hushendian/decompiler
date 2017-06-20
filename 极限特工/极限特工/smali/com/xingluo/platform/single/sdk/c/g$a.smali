.class Lcom/xingluo/platform/single/sdk/c/g$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sdk/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sdk/c/g;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sdk/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sdk/c/g$a;->getResultCode()I

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->a(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->b(Lcom/xingluo/platform/single/sdk/c/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v2}, Lcom/xingluo/platform/single/sdk/c/g;->a(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    sput-boolean v4, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->d(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v1}, Lcom/xingluo/platform/single/sdk/c/g;->e(Lcom/xingluo/platform/single/sdk/c/g;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sdk/c/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->d(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sdk/c/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->d(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sdk/c/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->f(Lcom/xingluo/platform/single/sdk/c/g;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    new-instance v1, Lcom/xingluo/platform/single/sdk/c/g$b;

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/xingluo/platform/single/sdk/c/g$b;-><init>(Lcom/xingluo/platform/single/sdk/c/g;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sdk/c/g;->a(Lcom/xingluo/platform/single/sdk/c/g;Lcom/xingluo/platform/single/sdk/c/g$b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v1}, Lcom/xingluo/platform/single/sdk/c/g;->g(Lcom/xingluo/platform/single/sdk/c/g;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g$a;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v2}, Lcom/xingluo/platform/single/sdk/c/g;->h(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/g$b;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    sput-boolean v4, Lcom/xingluo/platform/single/order/Order;->k:Z

    goto :goto_1
.end method
