.class public Lcom/xingluo/platform/single/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/util/i;

.field private static b:Lcom/xingluo/platform/single/sdk/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sdk/b;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->b:Lcom/xingluo/platform/single/sdk/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/b;->b:Lcom/xingluo/platform/single/sdk/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->b:Lcom/xingluo/platform/single/sdk/b;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;[Ljava/lang/String;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, " SDK initFlag Start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/sdk/d/b;->a()Lcom/xingluo/platform/single/sdk/d/b;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/single/sdk/d/b;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/single/sdk/d/b;->a(Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sdk/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, ".....initWoShop"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;I)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "processChinaMobile 144"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isGBData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMdoData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMMdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getMoblieNum()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xingluo/platform/single/sdk/b;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;[Ljava/lang/String;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "......initCTEGame"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/sdk/c/e;->a()Lcom/xingluo/platform/single/sdk/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sdk/c/e;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sdk/c/e;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xl_billing_otherpay"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->OTHERPAY_IS_SUPPORT:Z

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xl_billing_chinaunicom"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINAUNICOM_IS_SUPPORT:Z

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xl_billing_chinamobile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINAMOBILE_IS_SUPPORT:Z

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xl_billing_chinatele"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINATELE_IS_SUPPORT:Z

    :cond_3
    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLSingleSDK firstinit  is success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XLSingleSDK firstinit  error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V
    .locals 4

    sget-object v0, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "------SDKInit"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xingluo/platform/single/util/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--XLCPGameData CpName ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--GameName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--CpServerNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpServerNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/sdk/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetXlSIMOperator ......."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/sdk/b;->b(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V

    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;->onComplete()V

    return-void

    :cond_1
    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sdk/b;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xl_Egame"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sdk/b;->c(Landroid/app/Activity;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
