.class Lcom/xingluo/platform/single/sms/pay/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/c/b;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->j(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v3}, Lcom/xingluo/platform/single/sms/pay/b/l;->e(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/r;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
