.class Lcom/xingluo/platform/single/sms/pay/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/t;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/t;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "--ZWLY\u652f\u4ed8\u7ed3\u679c\u4e0a\u62a5\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/t;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "--ZWLY\u652f\u4ed8\u7ed3\u679c\u4e0a\u62a5\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method
