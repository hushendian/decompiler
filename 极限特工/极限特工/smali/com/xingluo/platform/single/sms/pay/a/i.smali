.class Lcom/xingluo/platform/single/sms/pay/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xlsdk sms union act 2:start send onFailed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->v(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "start send onSuccess"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "xlsdk sms union act 2:start send onSuccess"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/i;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    return-void
.end method
