.class Lcom/xingluo/platform/ad/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/XLInitAdsManager;

.field private final synthetic b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/XLInitAdsManager;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    iput-object p2, p0, Lcom/xingluo/platform/ad/c;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/c;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    # getter for: Lcom/xingluo/platform/ad/XLInitAdsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/platform/ad/XLInitAdsManager;->access$3(Lcom/xingluo/platform/ad/XLInitAdsManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    const-string v1, "LOGOFINISH"

    invoke-interface {v0, v1}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    return-void
.end method
