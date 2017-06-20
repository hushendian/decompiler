.class public Lcom/xingluo/platform/single/e/a/a;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/xingluo/platform/single/e/a/a;


# instance fields
.field public a:Lcom/xingluo/platform/single/pay/a/a;

.field private b:Lcom/xingluo/platform/single/util/i;

.field private c:Lcom/xingluo/platform/single/order/Order;

.field private d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field private e:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/e/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/e/a/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/e/a/a;->f:Lcom/xingluo/platform/single/e/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/e/a/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/e/a/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/e/a/a;->f:Lcom/xingluo/platform/single/e/a/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/e/a/a;->f:Lcom/xingluo/platform/single/e/a/a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 6

    :try_start_0
    const-string v0, "com.xingluo.platform.single.third.XLSingleThirdPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/xingluo/platform/single/order/Order;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 3

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "Payment callback can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "activityContext can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "xlPlatformGameProps can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getGameType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    const/16 v1, 0xbc7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/json/a;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p4, p0, Lcom/xingluo/platform/single/e/a/a;->d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    new-instance v0, Lcom/xingluo/platform/single/pay/a/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/a/a;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->a:Lcom/xingluo/platform/single/pay/a/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->a:Lcom/xingluo/platform/single/pay/a/a;

    iget-object v1, p0, Lcom/xingluo/platform/single/e/a/a;->d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/a/a;->a(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/e/a/a;->a(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "cp_to_duoku_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "all_egmae_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "order"

    iget-object v2, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPlatform invokePayCenterActivity : success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u8ba1\u8d39\u70b9\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/xingluo/platform/single/e/a/a;->a(Lcom/xingluo/platform/single/item/GamePropsInfo;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPayType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThirdPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, v4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payBySMS  operator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, v4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "You haven\'t add the Third pay or not open the Third pay switch!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "\u65e0\u8ba1\u8d39\u901a\u9053"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 6

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms support payBySMS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "No payBySMS"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p6, v1}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.xingluo.platform.single.sms.XLSingleSMSPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/xingluo/platform/single/item/GamePropsInfo;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lcom/xingluo/platform/single/order/Order;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/view/ViewGroup;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V
    .locals 3

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/pay/EventType;->f:Lcom/xingluo/platform/single/pay/EventType;

    invoke-virtual {p4, v0}, Lcom/xingluo/platform/single/pay/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->e:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    const-string v1, "\u6ca1\u6709\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\u4e86!"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    :cond_2
    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "No payByThird"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v0

    const/16 v1, 0x1b5a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0

    :cond_4
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto :goto_0
.end method

.method public a(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/e/a/a;->d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/item/GamePropsInfo;)V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/single/order/Order;

    invoke-direct {v0}, Lcom/xingluo/platform/single/order/Order;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/order/Order;->a(J)V

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/e/a/a;->e:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    return-void
.end method

.method public b()Lcom/xingluo/platform/single/pay/listener/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->a:Lcom/xingluo/platform/single/pay/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/pay/a/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/a/a;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->a:Lcom/xingluo/platform/single/pay/a/a;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->a:Lcom/xingluo/platform/single/pay/a/a;

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 6

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "No payBySDK"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p6, v1}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "---payBySDK into"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v0, "com.xingluo.platform.single.sdk.XLSingleSDKPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/xingluo/platform/single/item/GamePropsInfo;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lcom/xingluo/platform/single/order/Order;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/view/ViewGroup;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/xingluo/platform/single/e/a/a;->c:Lcom/xingluo/platform/single/order/Order;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->e:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    return-object v0
.end method

.method public d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/e/a/a;->d:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-object v0
.end method
