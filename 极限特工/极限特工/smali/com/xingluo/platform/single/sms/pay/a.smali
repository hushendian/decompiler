.class Lcom/xingluo/platform/single/sms/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/pay/listener/b;


# instance fields
.field a:Lcom/xingluo/platform/single/sms/pay/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/xingluo/platform/single/pay/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a;->a:Lcom/xingluo/platform/single/sms/pay/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/d;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a;->a:Lcom/xingluo/platform/single/sms/pay/d;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a;->a:Lcom/xingluo/platform/single/sms/pay/d;

    return-object v0
.end method
