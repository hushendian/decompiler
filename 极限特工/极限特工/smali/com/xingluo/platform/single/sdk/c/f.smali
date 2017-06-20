.class public Lcom/xingluo/platform/single/sdk/c/f;
.super Lcom/xingluo/platform/single/pay/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sdk/c/f$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field private b:Lcom/xingluo/platform/single/util/i;

.field private c:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

.field private d:Lcom/xingluo/platform/single/order/Order;

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

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v0, Lcom/xingluo/platform/single/sdk/callback/a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sdk/callback/a;-><init>(Lcom/xingluo/platform/single/sdk/c/f;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->c:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/single/sdk/c/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sdk/c/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sdk/c/f;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sdk/c/f$a;->a:Lcom/xingluo/platform/single/sdk/c/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

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

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    const-string v2, "XLPayGBSDKWorker is init pay"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getPropsType()I

    move-result v2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayGBSDKWorker in pay isRepeated"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isUserSms()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/c/f;->c:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    :goto_0
    return-void

    :cond_0
    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    const-string v3, "XLPayGBSDKWorker in pay isPropsType"

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/c/f;->c:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUserSms= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isUserSms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--isRepeated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--getBillingIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getBillingIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--getCpParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isUserSms()Z

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated()Z

    move-result v2

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/c/f;->c:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

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

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sdk/c/f;->a(Landroid/app/Activity;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->f:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->e()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->e:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/f;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    invoke-direct {p0}, Lcom/xingluo/platform/single/sdk/c/f;->d()V

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strs ---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    aget-object v1, p1, v3

    aget-object v2, p1, v6

    aget-object v3, p1, v5

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$ILoginCallback;)V

    :goto_0
    sput-boolean v6, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GAMEBASE_SDK_INIT_IS_OK:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayGBSDKWorker is paySuccess"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sdk/c/f;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK_OTHER:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

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

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/f;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayGBSDKWorker is requestFailed"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK_OTHER:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/f;->d:Lcom/xingluo/platform/single/order/Order;

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
