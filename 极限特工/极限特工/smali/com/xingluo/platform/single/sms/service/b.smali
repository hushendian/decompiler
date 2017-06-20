.class public Lcom/xingluo/platform/single/sms/service/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/sms/service/b;


# instance fields
.field private b:Lcom/xingluo/platform/single/order/Order;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sms/service/b;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sms/service/b;->a:Lcom/xingluo/platform/single/sms/service/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/service/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/service/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sms/service/b;->a:Lcom/xingluo/platform/single/sms/service/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/service/b;->a:Lcom/xingluo/platform/single/sms/service/b;

    return-object v0
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b;

    invoke-direct {v1}, Lcom/xingluo/platform/single/sms/pay/b;-><init>()V

    sget-object v2, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/b;->c()I

    move-result v3

    invoke-virtual {v1, p2, v2, v0, v3}, Lcom/xingluo/platform/single/sms/pay/b;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 5

    new-instance v0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/service/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/b/i;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/service/b;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/xingluo/platform/single/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p2, v3, v4, v1}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;)V

    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/xingluo/platform/single/item/GamePropsInfo;)V
    .locals 2

    new-instance v0, Lcom/xingluo/platform/single/order/Order;

    invoke-direct {v0, p1}, Lcom/xingluo/platform/single/order/Order;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xingluo/platform/single/order/Order;->i:J

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/xingluo/platform/single/item/GamePropsInfo;)V
    .locals 4

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/service/b;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xingluo/platform/single/sms/service/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a()Lcom/xingluo/platform/single/pay/ViewType;

    move-result-object v1

    new-instance v2, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v2}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/sms/service/b;->a(Landroid/content/Context;Lcom/xingluo/platform/single/item/GamePropsInfo;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/service/b;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/service/b;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Lcom/xingluo/platform/single/pay/ViewType;)V

    return-void
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
