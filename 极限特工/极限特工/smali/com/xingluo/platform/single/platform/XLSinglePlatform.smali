.class public Lcom/xingluo/platform/single/platform/XLSinglePlatform;
.super Ljava/lang/Object;


# static fields
.field private static activity:Landroid/app/Activity;

.field public static channelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static channelListExt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static channelNeedPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static gost:Lcom/xingluo/platform/single/net/a/c;

.field private static instance:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

.field public static mdohd:Z

.field public static verifyList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/single/item/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ERRORTAG:Ljava/lang/String;

.field private LOGO_TIMER:J

.field private flagFindMobile:Z

.field private logger:Lcom/xingluo/platform/single/util/i;

.field private mDialog:Landroid/app/Dialog;

.field private mIsLandScape:Z

.field public mLoadingDialog:Lcom/xingluo/platform/single/view/g;

.field private mLogoView:Lcom/xingluo/platform/single/view/XLLogoView;

.field private paramContext:Landroid/content/Context;

.field private payService:Lcom/xingluo/platform/single/e/a/a;

.field private popupDia:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelList:Ljava/util/ArrayList;

    sput-object v1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelNeedPhone:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mdohd:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->popupDia:Z

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->LOGO_TIMER:J

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->payService:Lcom/xingluo/platform/single/e/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->popupDia:Z

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->LOGO_TIMER:J

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/xingluo/platform/single/e/a/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/e/a/a;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->payService:Lcom/xingluo/platform/single/e/a/a;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mIsLandScape:Z

    return v0
.end method

.method static synthetic access$3(Lcom/xingluo/platform/single/platform/XLSinglePlatform;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->versionUpDataInit(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$4(Lcom/xingluo/platform/single/platform/XLSinglePlatform;ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initAd(ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    return-void
.end method

.method private baseInit(Landroid/app/Activity;ZLcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "tag sdk start "

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mIsLandScape:Z

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->b(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initXLSettingData(Z)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initNetModel()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initJSONbuilder()V

    invoke-direct {p0, p4}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initLocation(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    invoke-direct {p0, p1, p3}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initPaySDK(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initPayThird()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initPaySMS()V

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->versionUpDataInit(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->instance:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    invoke-direct {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->instance:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->instance:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    return-object v0
.end method

.method private initAd(ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init Ad start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v0, "com.xingluo.platform.ad.XLADSinglePlatform"

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

    const-string v2, "init"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init Ad end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->ERRORTAG:Ljava/lang/String;

    const-string v1, "\u9519\u8bef\u63d0\u793a\uff1a\u8bf7\u68c0\u67e5\u662f\u5426\u52a0\u5165\u76f8\u5173\u5de5\u7a0b\u6587\u4ef6\u6216\u8005\u8bf7\u5c06AndroidManifest.xml\u6587\u4ef6\u4e2dxlsdk_ad\u8bbe\u7f6e\u4e3afalse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    const-string v0, "LOGOFINISH"

    invoke-interface {p2, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "NO AD_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initJSONbuilder()V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/json/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private initLocation(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/d/c;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/d/c;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/single/platform/b;

    invoke-direct {v1, p0, p1}, Lcom/xingluo/platform/single/platform/b;-><init>(Lcom/xingluo/platform/single/platform/XLSinglePlatform;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/d/c;->a(Lcom/xingluo/platform/single/d/c$a;)V

    :cond_1
    return-void
.end method

.method private initNetModel()V
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->a()V

    return-void
.end method

.method private initPaySDK(Landroid/app/Activity;Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 6

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "---------initPaySDK start..."

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

    const-string v2, "init"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/xingluo/platform/single/pay/data/XLAllParams;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPaySDK end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "NO PAY_SDK_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPaySMS()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPaySMS start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

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

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPaySMS end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->ERRORTAG:Ljava/lang/String;

    const-string v1, "\u9519\u8bef\u63d0\u793a\uff1a\u8bf7\u68c0\u67e5\u662f\u5426\u52a0\u5165\u76f8\u5173\u5de5\u7a0b\u6587\u4ef6\u6216\u8005\u8bf7\u5c06AndroidManifest.xml\u6587\u4ef6\u4e2dxlsdk_paySMS\u8bbe\u7f6e\u4e3afalse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "NO PAY_SMS_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPaySMSPayChannel()V
    .locals 6

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPaySMS start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

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

    const-string v2, "initPaychannle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPaySMS end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initPayThird()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPayThird start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

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

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initPayThird end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->ERRORTAG:Ljava/lang/String;

    const-string v1, "\u9519\u8bef\u63d0\u793a\uff1a\u8bf7\u68c0\u67e5\u662f\u5426\u52a0\u5165\u76f8\u5173\u5de5\u7a0b\u6587\u4ef6\u6216\u8005\u8bf7\u5c06AndroidManifest.xml\u6587\u4ef6\u4e2dxlsdk_payThird\u8bbe\u7f6e\u4e3afalse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "NO PAY_THIRD_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initXLSettingData(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "xlsdk init setting data start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xlsdk_appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "xlsdk_appkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "xlsdk_appsecret"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "xlsdk_channel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "xlsdk init setting data XLPlatform Settings error, please check your settings!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    sput v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->supportSwitch(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->supportReport(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "xlsdk init setting data success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xlsdk init setting data error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    sput v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private supportReport(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_ghost"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->ISINPUT:Z

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_pay_channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method private supportSwitch(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_payThird"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_paySMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms support="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_upData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->UPDATA_SUPPORT:Z

    :cond_3
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xlsdk_paySDK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    :cond_4
    return-void
.end method

.method private versionUpDataInit(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->UPDATA_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/single/update/XLSingleUpdateManager;->getInstance()Lcom/xingluo/single/update/XLSingleUpdateManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->popupDia:Z

    new-instance v2, Lcom/xingluo/platform/single/platform/a;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/single/platform/a;-><init>(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/xingluo/single/update/XLSingleUpdateManager;->checkUpdate(Landroid/app/Activity;ZLcom/xingluo/single/update/listener/CheckUpdateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addVerifyObject(Ljava/lang/String;Lcom/xingluo/platform/single/item/a;)V
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public doGostHDAndMDOPay(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "doGostHDAndMDOPay start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

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

    const-string v2, "doGostPay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "doGostHDAndMDOPay Ad end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "NO PAY_SMS_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getChannelNeedPhone()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelNeedPhone:Ljava/util/HashMap;

    return-object v0
.end method

.method public getChannels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannelsExt()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGost()Lcom/xingluo/platform/single/net/a/c;
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/net/a/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/net/a/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a/c;->a(Z)V

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a/c;->c(Z)V

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    return-object v0
.end method

.method public getMoblieNum()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMoblieNum start context"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->paramContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->paramContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMoblieNum start phoneNum"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    iput-boolean v5, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    const-string v2, "BDGame"

    const-string v3, "The telephone number cannot be found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v2, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->setFlagFindMobile(Z)V

    iget-object v2, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->paramContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v0, v1, v5

    aput-object v2, v1, v6

    return-object v1

    :cond_1
    iput-boolean v6, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    const-string v2, "BDGame"

    const-string v3, "The telephone number can be found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVerifyObject(Ljava/lang/String;)Lcom/xingluo/platform/single/item/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->verifyList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;ZLcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 1

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->paramContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->ERRORTAG:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->baseInit(Landroid/app/Activity;ZLcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    return-void
.end method

.method public isFlagFindMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->b(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "Are you kidding me? params is null!"

    invoke-interface {p4, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "params is null!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->payService:Lcom/xingluo/platform/single/e/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto :goto_0
.end method

.method public refreshGost()V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    const-string v1, "gost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gost"

    sget-object v2, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/net/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveReply(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    const-string v1, "gost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "replys"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setChannelNeedPhone(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelNeedPhone:Ljava/util/HashMap;

    return-void
.end method

.method public setChannels(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelList:Ljava/util/ArrayList;

    return-void
.end method

.method public setChannelsExt(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    return-void
.end method

.method public setFlagFindMobile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->flagFindMobile:Z

    return-void
.end method

.method public setGost(Lcom/xingluo/platform/single/net/a/c;)V
    .locals 1

    sput-object p1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->gost:Lcom/xingluo/platform/single/net/a/c;

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;Lcom/xingluo/platform/single/net/a/c;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->refreshGost()V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/view/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateChannelsExt()V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/i;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/i;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->channelListExt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/i;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public xlgameExit(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 6

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.xingluo.platform.ad.XLADSinglePlatform"

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

    const-string v2, "bdgameExit"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/net/c;->c()V

    goto :goto_0
.end method

.method public xlgamePause(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 6

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.xingluo.platform.ad.XLADSinglePlatform"

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

    const-string v2, "bdgamePause"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
