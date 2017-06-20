.class Lcom/xingluo/platform/single/third/d/a/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/third/d/a/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/third/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/third/d/a/a;->a(Lcom/xingluo/platform/single/third/d/a/a;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/third/d/a/a;->a(Lcom/xingluo/platform/single/third/d/a/a;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/third/d/a/a;->a(Lcom/xingluo/platform/single/third/d/a/a;)Lcom/xingluo/platform/single/order/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/xingluo/platform/single/third/a/d;

    invoke-direct {v3, v0}, Lcom/xingluo/platform/single/third/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xingluo/platform/single/third/a/d;->a()V

    iget-boolean v0, v3, Lcom/xingluo/platform/single/third/a/d;->d:Z

    iget-object v3, v3, Lcom/xingluo/platform/single/third/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "9000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v0}, Lcom/xingluo/platform/single/third/d/a/a;->b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v3, "share_last_thirdpay_success"

    sget-object v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v4, v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v1

    iget-object v3, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v3}, Lcom/xingluo/platform/single/third/d/a/a;->b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->d:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    iget-object v3, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v3}, Lcom/xingluo/platform/single/third/d/a/a;->b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto/16 :goto_0

    :cond_2
    :try_start_4
    const-string v0, "9000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/third/d/a/a;->b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v3, "share_last_thirdpay_success"

    sget-object v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v4, v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/third/d/a/b;->a:Lcom/xingluo/platform/single/third/d/a/a;

    invoke-static {v4}, Lcom/xingluo/platform/single/third/d/a/a;->b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    throw v0

    :cond_3
    :try_start_6
    const-string v0, "6001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
