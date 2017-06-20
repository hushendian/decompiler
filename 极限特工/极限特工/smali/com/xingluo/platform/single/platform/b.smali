.class Lcom/xingluo/platform/single/platform/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/d/c$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

.field private final synthetic b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/platform/XLSinglePlatform;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/platform/b;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    iput-object p2, p0, Lcom/xingluo/platform/single/platform/b;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/platform/b;)Lcom/xingluo/platform/single/platform/XLSinglePlatform;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/b;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    # getter for: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$1()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/e/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/b;->a()Lcom/xingluo/platform/single/e/b;

    move-result-object v0

    # getter for: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$1()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/e/b;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/b;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    iget-object v1, p0, Lcom/xingluo/platform/single/platform/b;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    # getter for: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->mIsLandScape:Z
    invoke-static {v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$2(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)Z

    move-result v1

    new-instance v2, Lcom/xingluo/platform/single/platform/c;

    iget-object v3, p0, Lcom/xingluo/platform/single/platform/b;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {v2, p0, v3}, Lcom/xingluo/platform/single/platform/c;-><init>(Lcom/xingluo/platform/single/platform/b;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    # invokes: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->initAd(ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$4(Lcom/xingluo/platform/single/platform/XLSinglePlatform;ZLcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    :cond_0
    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/b;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    const-string v1, "3000"

    invoke-interface {v0, v1}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
