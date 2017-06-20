.class public Lcom/xingluo/platform/single/third/d/a/d;
.super Lcom/xingluo/platform/single/third/d/a;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field private f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a;-><init>()V

    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "json147_wx_appid"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/xingluo/platform/single/third/a;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object p1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/xingluo/platform/single/third/a;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "156"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "3600"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "http://xlsdk.xl-game.cn/sdkServer/ipaynownotice"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "UTF-8"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "13"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 12

    const/16 v8, 0xde

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v6}, Lcom/xingluo/platform/single/order/Order;->l()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

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


# virtual methods
.method public a()V
    .locals 2

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/xingluo/platform/single/third/f/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->b:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/d/a/d;->b()V

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
    .locals 4

    const/16 v3, 0x3e8

    const/16 v2, 0x95

    if-ne p1, v2, :cond_1

    check-cast p2, Lcom/xingluo/platform/single/third/c/a/b;

    :try_start_0
    iget-object v0, p2, Lcom/xingluo/platform/single/third/c/a/b;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xingluo/platform/single/third/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "args------------->>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ipaynow/plugin/api/a;->setPayLoading(Landroid/app/ProgressDialog;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xde

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/xingluo/platform/single/third/dao/a;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/third/d/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->f:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->g:Ljava/lang/String;

    new-instance v0, Lcom/xingluo/platform/single/third/b/d;

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/pay"

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/single/third/b/d;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/d/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/third/b/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/third/b/b;->a()Lcom/xingluo/platform/single/third/b/c;

    move-result-object v2

    invoke-interface {v1, v0, p0, v2}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->a:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->a:Landroid/app/Activity;

    const-string v1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/d/a/d;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/util/v;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    return-void
.end method
