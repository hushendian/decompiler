.class Lcom/xingluo/platform/single/sms/pay/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/e;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/e;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/d;->a(Lcom/xingluo/platform/single/sms/pay/d;)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/PayOrderChannel;->getPayOrderChannelByString(Ljava/lang/String;)Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/e;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/d;->b(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/e;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/d;->b(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/e;->a:Lcom/xingluo/platform/single/sms/pay/d;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/d;->b(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    sput-boolean v2, Lcom/xingluo/platform/single/order/Order;->l:Z

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->closePaycenterActivity()V

    :cond_0
    return-void
.end method
