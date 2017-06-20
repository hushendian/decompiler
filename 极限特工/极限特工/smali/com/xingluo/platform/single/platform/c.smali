.class Lcom/xingluo/platform/single/platform/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/platform/b;

.field private final synthetic b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/platform/b;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/platform/c;->a:Lcom/xingluo/platform/single/platform/b;

    iput-object p2, p0, Lcom/xingluo/platform/single/platform/c;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/c;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    const-string v1, "3000"

    invoke-interface {v0, v1}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    const-string v0, "LOGOFINISH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/c;->a:Lcom/xingluo/platform/single/platform/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/platform/b;->a(Lcom/xingluo/platform/single/platform/b;)Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    # getter for: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$1()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->versionUpDataInit(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$3(Lcom/xingluo/platform/single/platform/XLSinglePlatform;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
