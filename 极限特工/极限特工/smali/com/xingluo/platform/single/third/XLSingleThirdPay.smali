.class public Lcom/xingluo/platform/single/third/XLSingleThirdPay;
.super Ljava/lang/Object;


# static fields
.field private static XLPayType:Ljava/lang/String;

.field private static instance:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

.field private static logger:Lcom/xingluo/platform/single/util/i;

.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private activity:Landroid/app/Activity;

.field private callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field private createThirdActivity:Z

.field private xlPayChannelService:Lcom/xingluo/platform/single/third/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    return-void
.end method

.method public static getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->instance:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->instance:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->instance:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    return-object v0
.end method


# virtual methods
.method public backDialog(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string v0, "payment_not_finish_tip"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p1}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/xingluo/platform/single/third/b;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/xingluo/platform/single/third/b;-><init>(Lcom/xingluo/platform/single/third/XLSingleThirdPay;Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    const-string v8, "ThirdPayActivity.backDialog"

    move-object v4, v1

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/view/c;

    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init pay third start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->activity:Landroid/app/Activity;

    sput-object p1, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/xingluo/platform/single/third/d/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/d/b;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->xlPayChannelService:Lcom/xingluo/platform/single/third/d/b;

    invoke-static {}, Lcom/xingluo/platform/single/third/e/a;->a()Lcom/xingluo/platform/single/third/e/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/third/e/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init pay third end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/single/json/a;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "=====>onPlatformRechargeResult"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->backDialog(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/single/order/Order;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "params or activity is null! payType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->xlPayChannelService:Lcom/xingluo/platform/single/third/d/b;

    invoke-virtual {v0, p2, p1}, Lcom/xingluo/platform/single/third/d/b;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/xingluo/platform/single/third/d/a;

    move-result-object v0

    invoke-virtual {p3, p2}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-object v1, p1

    move-object v2, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/d/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;ILjava/util/List;)V

    goto :goto_0
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 8

    const/high16 v7, 0x4000000

    const/4 v4, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay third start...  payType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sput-object p2, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->XLPayType:Ljava/lang/String;

    if-nez p3, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "params is null! payType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p4, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "json147_alipay"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "json147_weixin"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "======>payType"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "order"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v6, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "order"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "weixin"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u540e\u53f0\u914d\u7f6e\u9519\u8bef\uff01"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/xingluo/platform/single/third/f/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALIPAY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALIPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "\u540e\u53f0\u914d\u7f6e\u9519\u8bef\uff01"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v1, v4

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    iput-boolean v4, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v6, p0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->createThirdActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "order"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "webpay"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "payType"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "payMethods"

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
