.class Lcom/xingluo/platform/single/sms/pay/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/j;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/j;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--\u8054\u5408\u652f\u4ed8\u7ed3\u679c\u4e0a\u62a5\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/j;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--\u8054\u5408\u652f\u4ed8\u7ed3\u679c\u4e0a\u62a5\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method
