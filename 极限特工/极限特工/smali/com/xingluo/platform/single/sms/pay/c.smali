.class public Lcom/xingluo/platform/single/sms/pay/c;
.super Lcom/xingluo/platform/single/order/a;


# instance fields
.field public a:Lcom/xingluo/platform/single/order/Order;

.field public b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/order/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/c;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/xingluo/platform/single/order/Order;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/order/Order;-><init>(Lcom/xingluo/platform/single/order/a;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->a:Lcom/xingluo/platform/single/order/Order;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->m:Landroid/content/Context;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->h:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->i:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->j:Ljava/lang/String;

    sget-boolean v0, Lcom/xingluo/platform/single/order/Order;->k:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->k:Z

    sget-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->l:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/PayOrderChannel;->getPayOrderChannelByString(Ljava/lang/String;)Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    const-string v1, "2"

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/c;->b()Z

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

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->closePaycenterActivity()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/PayOrderChannel;->getPayOrderChannelByString(Ljava/lang/String;)Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    :cond_0
    const-string v1, "2"

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/c;->b()Z

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

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    sget-object v2, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    sget-object v2, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/single/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v5, ""

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_LDYS:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "5328"

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/c;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/xingluo/platform/single/sms/pay/c;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/xingluo/platform/single/sms/pay/c;->j:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/makeOrder"

    const/4 v2, 0x3

    move-object v4, v8

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xlsdk isGostSwitch>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/PayOrderChannel;->getPayOrderChannelByString(Ljava/lang/String;)Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    if-nez p2, :cond_5

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "xlsdk pay success dialog!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/xingluo/platform/single/sms/pay/c;->a(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "xlsdk pay success notice cp ok (3010)!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v1

    const/16 v2, 0xbc2

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    :cond_5
    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/c;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->b(Lcom/xingluo/platform/single/order/Order;)V

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
