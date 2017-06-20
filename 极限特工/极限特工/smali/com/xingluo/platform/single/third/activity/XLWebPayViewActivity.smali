.class public Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field private FailResponseTime:J

.field private Orderid:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private itemName:Ljava/lang/String;

.field private logger:Lcom/xingluo/platform/single/util/i;

.field public mLoadingDialog:Lcom/xingluo/platform/single/view/g;

.field private myWebView:Landroid/webkit/WebView;

.field private onResumeNum:I

.field private orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

.field private payChannel:Ljava/lang/String;

.field private final payResponseFail:I

.field private requestNum:I

.field private urlComment:Ljava/lang/String;

.field private urlTotal:Ljava/lang/String;

.field private usePayPrice:Ljava/lang/String;

.field private userData:Ljava/lang/String;

.field private usetItemID:Ljava/lang/String;

.field private webUrl:Ljava/lang/String;

.field private webViewClient:Landroid/webkit/WebViewClient;

.field private xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->logger:Lcom/xingluo/platform/single/util/i;

    iput-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    const-string v0, "act.sdkclient"

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlComment:Ljava/lang/String;

    iput-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlTotal:Ljava/lang/String;

    iput-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iput v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->onResumeNum:I

    iput v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->requestNum:I

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->FailResponseTime:J

    const v0, 0x15f90

    iput v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payResponseFail:I

    new-instance v0, Lcom/xingluo/platform/single/third/activity/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/third/activity/b;-><init>(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->webViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/xingluo/platform/single/third/activity/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/third/activity/c;-><init>(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlTotal:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->paySuccessCallback()V

    return-void
.end method

.method static synthetic access$3(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payFailCallback()V

    return-void
.end method

.method static synthetic access$4(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payResultQuery()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->dismiss()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/xingluo/platform/single/view/g;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->initWebViewSettings()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->Orderid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "usePayPrice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usePayPrice:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "usetItemID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usetItemID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payChannel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payChannel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->userData:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->itemName:Ljava/lang/String;

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usePayPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usetItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->Orderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_WEBPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const-string v0, "web_pay_view"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    return-void
.end method

.method private initWebViewSettings()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method private payCancelCallback()V
    .locals 4

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->thirdPayActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    return-void
.end method

.method private payFailCallback()V
    .locals 4

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    sget-boolean v0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->isShowView:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a()I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    sget-object v0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->thirdPayActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->thirdPayActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    goto :goto_0
.end method

.method private payResultQuery()V
    .locals 12

    const/16 v8, 0xdf

    iget v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->requestNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->requestNum:I

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payChannel:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->Orderid:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usePayPrice:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->usetItemID:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->itemName:Ljava/lang/String;

    iget-object v7, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->userData:Ljava/lang/String;

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

.method private paySuccessCallback()V
    .locals 4

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->thirdPayActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->xlThirdErrorCode:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->orderInfo:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/view/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "xl_commom_webpay"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->initView()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payCancelCallback()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 2

    const/16 v0, 0xdf

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/xingluo/platform/single/third/dao/a;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->paySuccessCallback()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->requestNum:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payFailCallback()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-wide v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->FailResponseTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->handler:Landroid/os/Handler;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payFailCallback()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4ea4\u6613\u67e5\u8be2\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/third/dao/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->onResumeNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->onResumeNum:I

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlTotal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payChannel:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->onResumeNum:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const-string v0, "\u4ea4\u6613\u7ed3\u679c\u67e5\u8be2\u4e2d..."

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payResultQuery()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\u4ea4\u6613\u7ed3\u679c\u67e5\u8be2\u4e2d..."

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payResultQuery()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
