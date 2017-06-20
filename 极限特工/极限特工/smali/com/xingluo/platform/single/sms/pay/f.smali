.class Lcom/xingluo/platform/single/sms/pay/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/d;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/xingluo/platform/single/order/Order;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/d;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/f;->a:Lcom/xingluo/platform/single/sms/pay/d;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/sms/pay/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/f;->a:Lcom/xingluo/platform/single/sms/pay/d;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/single/sms/pay/d;->a(Lcom/xingluo/platform/single/sms/pay/d;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    return-void
.end method
