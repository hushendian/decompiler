.class public Lcom/xingluo/platform/single/sdk/c/d;
.super Lcom/xingluo/platform/single/pay/b;


# static fields
.field private static e:Lcom/xingluo/platform/single/sdk/c/d;


# instance fields
.field a:Lcom/xingluo/platform/single/order/Order;

.field b:Landroid/content/Context;

.field c:Lmm/purchasesdk/Purchase;

.field private d:Lcom/xingluo/platform/single/util/i;

.field private f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private h:Lcom/xingluo/platform/single/sdk/c/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sdk/c/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sdk/c/d;->e:Lcom/xingluo/platform/single/sdk/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/c/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/c/d;->e:Lcom/xingluo/platform/single/sdk/c/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/c/d;->e:Lcom/xingluo/platform/single/sdk/c/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    sget-object v6, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    sget-object v7, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/makeOrder"

    const/4 v2, 0x3

    move-object v4, v8

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->k()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private c()V
    .locals 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayCMMMWorker goto setAppInfo"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayCMMMWorker goto success "

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getSKIN()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "allParams.getPaycode()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getPaycode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----allParams.getUserdata()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getUserdata()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getPaycode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getUserdata()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xingluo/platform/single/sdk/c/d;->h:Lcom/xingluo/platform/single/sdk/c/b;

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayCMMMWorker goto requestFailed"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sdk/c/d;->b()V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XLPayCMMMWorker is init mmappid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----,mmappkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/b;

    new-instance v1, Lcom/xingluo/platform/single/sdk/c/a;

    invoke-direct {v1, p1}, Lcom/xingluo/platform/single/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/xingluo/platform/single/sdk/c/b;-><init>(Landroid/content/Context;Lcom/xingluo/platform/single/sdk/c/a;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->h:Lcom/xingluo/platform/single/sdk/c/b;

    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0, p2, p3}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "setAppInfo is over"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->c:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->h:Lcom/xingluo/platform/single/sdk/c/b;

    invoke-virtual {v0, p1, v1}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "purchase.init is over"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/d;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v1

    const/16 v2, 0xbc2

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xingluo/platform/single/pay/PayParameter;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayCMMMWorker is init doPay"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->b:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mm data can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->d:Lcom/xingluo/platform/single/util/i;

    const-string v1, "mm data  not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->e()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->g:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/d;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sdk/c/d;->a(Lcom/xingluo/platform/single/order/Order;)Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sdk/c/d;->c()V

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/order/Order;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/d;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

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

    return-void
.end method
