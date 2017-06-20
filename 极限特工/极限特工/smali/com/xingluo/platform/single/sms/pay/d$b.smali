.class Lcom/xingluo/platform/single/sms/pay/d$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/pay/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/d;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/single/sms/pay/d;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/d$b;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d$b;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/d;->f(Lcom/xingluo/platform/single/sms/pay/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d$b;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/d;->i(Lcom/xingluo/platform/single/sms/pay/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d$b;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/d;->a()V

    :cond_1
    return-void
.end method
