.class public Lcom/xingluo/platform/single/third/d/a/a;
.super Lcom/xingluo/platform/single/third/d/a;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field private f:Lcom/xingluo/platform/single/util/i;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/third/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->f:Lcom/xingluo/platform/single/util/i;

    new-instance v0, Lcom/xingluo/platform/single/third/d/a/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/third/d/a/b;-><init>(Lcom/xingluo/platform/single/third/d/a/a;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "json147_alipay_partner"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "json147_alipay_seller"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "json147_alipay_server_notify_url"

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "json147_alipay_rsa_private"

    invoke-virtual {v0, v4}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "json147_alipay_rsa_alipay_public"

    invoke-virtual {v0, v5}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sput-object v1, Lcom/xingluo/platform/single/third/a;->c:Ljava/lang/String;

    sput-object v0, Lcom/xingluo/platform/single/third/a;->f:Ljava/lang/String;

    sput-object v4, Lcom/xingluo/platform/single/third/a;->e:Ljava/lang/String;

    sput-object v3, Lcom/xingluo/platform/single/third/a;->h:Ljava/lang/String;

    sput-object v2, Lcom/xingluo/platform/single/third/a;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/third/d/a/a;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/third/a;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/xingluo/platform/single/third/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/third/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sign="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/xingluo/platform/single/third/d/a/c;

    invoke-direct {v0, p0, p2}, Lcom/xingluo/platform/single/third/d/a/c;-><init>(Lcom/xingluo/platform/single/third/d/a/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/d/a/c;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "share_last_thirdpay_success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "share_last_thirdpay_success"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 12

    const/16 v8, 0xde

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->d:Ljava/util/List;

    iget v2, p0, Lcom/xingluo/platform/single/third/d/a/a;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v6}, Lcom/xingluo/platform/single/order/Order;->l()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v7}, Lcom/xingluo/platform/single/order/Order;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v8}, Lcom/xingluo/platform/single/json/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v6

    const-string v7, "http://xlsdk.sdk.sinraten.com/sdkServer/makeOrder"

    invoke-static {}, Lcom/xingluo/platform/single/third/b/b;->a()Lcom/xingluo/platform/single/third/b/c;

    move-result-object v11

    move-object v10, p0

    invoke-interface/range {v6 .. v11}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/third/d/a/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private d()Z
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/third/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/third/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "partner=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/third/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "seller_id=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/third/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "out_trade_no=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "subject=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "body=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "total_fee=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "notify_url=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/third/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&service=\"mobile.securitypay.pay\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&payment_type=\"1\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&_input_charset=\"utf-8\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&it_b_pay=\"1d\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/xingluo/platform/single/third/f/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->f:Lcom/xingluo/platform/single/util/i;

    const-string v1, "======XLAliPayChannelImpl doPay"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/a;->b()V

    return-void
.end method

.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 5

    const/16 v4, 0x3e8

    const-string v0, "SERVER RESPONSE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "================"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xde

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/xingluo/platform/single/third/dao/a;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/third/d/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    const-string v1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    const-string v3, "xl_payment_error_1001"

    invoke-static {v2, v3}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/util/v;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    return-void
.end method
