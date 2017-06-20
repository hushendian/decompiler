.class Lcom/xingluo/platform/single/sms/pay/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/c/b;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/a/b;->h(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0, p1}, Lcom/xingluo/platform/single/sms/pay/a/b;->b(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/g;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
