.class public Lcom/xingluo/platform/single/sdk/c/i;
.super Lcom/xingluo/platform/single/pay/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sdk/c/i$a;
    }
.end annotation


# static fields
.field private static c:Lcom/xingluo/platform/single/sdk/c/i;


# instance fields
.field a:Lcom/xingluo/platform/single/item/GamePropsInfo;

.field private b:Lcom/xingluo/platform/single/util/i;

.field private d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private e:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

.field private f:Lcom/xingluo/platform/single/order/Order;

.field private g:Lcom/xingluo/platform/single/util/t;

.field private h:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->b:Lcom/xingluo/platform/single/util/i;

    const-string v0, "GK"

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

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

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    if-lt v0, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/i;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    sget-object v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v3, v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/single/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    sget-object v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v3, v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

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

.method public a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

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

.method public a(Ljava/util/Map;)V
    .locals 13
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

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLWoStoreSDK init doPay success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WoStore can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->c()Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->e:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->g:Lcom/xingluo/platform/single/util/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/xingluo/platform/single/sdk/f/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_WOSTORE:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/i;->i:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/xingluo/platform/single/sdk/c/i;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v7}, Lcom/xingluo/platform/single/sdk/c/i;->a(Ljava/lang/String;Z)V

    :cond_3
    const-string v2, "9023175405320151216155132481900"

    const-string v3, "86013895"

    const-string v4, "00029930"

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->e:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->f:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->e:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v6, "\u661f\u7f57\u5929\u4e0b"

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "doPay Utils ----------------"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/i;->j:Landroid/content/Context;

    new-instance v11, Lcom/xingluo/platform/single/sdk/c/i$a;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/xingluo/platform/single/sdk/c/i$a;-><init>(Lcom/xingluo/platform/single/sdk/c/i;Lcom/xingluo/platform/single/sdk/c/i$a;)V

    invoke-virtual/range {v0 .. v11}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    return-void
.end method
