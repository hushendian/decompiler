.class public Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;
.super Ljava/lang/Object;


# static fields
.field public static eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field private static instance:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

.field private static logger:Lcom/xingluo/platform/single/util/i;

.field public static mActivity:Landroid/app/Activity;


# instance fields
.field callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field public mAllParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field public propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLSingleSDKPay getInstance"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->instance:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->instance:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->instance:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--------------XLSingleSDKPay init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->mAllParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-static {}, Lcom/xingluo/platform/single/sdk/b;->a()Lcom/xingluo/platform/single/sdk/b;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/single/sdk/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sdk/a;-><init>(Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/xingluo/platform/single/sdk/b;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V

    invoke-static {}, Lcom/xingluo/platform/single/sdk/b;->a()Lcom/xingluo/platform/single/sdk/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sdk/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public pay(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/order/Order;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "SDK pay ......................init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewType is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;

    if-nez p7, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "Payment callback can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "GamePropsInfo can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v3, p3, v0, p5}, Lcom/xingluo/platform/single/sdk/e/a;->a(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)Lcom/xingluo/platform/single/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0, p6, p4, p2}, Lcom/xingluo/platform/single/sdk/e/a;->a(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->b:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    :cond_3
    :goto_1
    new-instance v0, Lcom/xingluo/platform/single/sdk/d/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/d/c;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    invoke-virtual {v0, p2, v1, p4, v3}, Lcom/xingluo/platform/single/sdk/d/c;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v0, :cond_5

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v0, :cond_6

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->c:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v0, :cond_7

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->d:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->e:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sput-object v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;->eventTypeSDK:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    goto :goto_1
.end method
