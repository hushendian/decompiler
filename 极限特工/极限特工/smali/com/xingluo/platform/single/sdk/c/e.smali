.class public Lcom/xingluo/platform/single/sdk/c/e;
.super Lcom/xingluo/platform/single/pay/b;

# interfaces
.implements Lcn/egame/terminal/paysdk/EgamePayListener;


# static fields
.field private static d:Lcom/xingluo/platform/single/sdk/c/e;


# instance fields
.field a:Lcom/xingluo/platform/single/order/Order;

.field b:Landroid/app/Activity;

.field private c:Lcom/xingluo/platform/single/util/i;

.field private e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;


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

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->c:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sdk/c/e;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sdk/c/e;->d:Lcom/xingluo/platform/single/sdk/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/e;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/c/e;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/c/e;->d:Lcom/xingluo/platform/single/sdk/c/e;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/c/e;->d:Lcom/xingluo/platform/single/sdk/c/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->k()Ljava/lang/String;

    move-result-object v7

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

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->k()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, " XLPayCTEGAMEWorker is in setAppInfo"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->c:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getToolsAlias=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/e;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getToolsAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->c:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getToolsAlias=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/e;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getToolsDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v1, "toolsAlias"

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getToolsAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toolsDesc"

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getToolsDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

    invoke-static {v1, v0, p0}, Lcn/egame/terminal/paysdk/EgamePay;->pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/content/Context;)V

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayCTEGAMEWorker dopay"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/xingluo/platform/single/sdk/f/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->e()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/xingluo/platform/single/sdk/c/e;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sdk/c/e;->a(Lcom/xingluo/platform/single/order/Order;)Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sdk/c/e;->b()V

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/order/Order;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

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

.method public payCancel(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v1

    const/16 v2, 0xbc4

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    return-void
.end method

.method public payFailed(Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

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

.method public paySuccess(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/e;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/e;->a:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

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
