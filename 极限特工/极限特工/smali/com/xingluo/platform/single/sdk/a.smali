.class Lcom/xingluo/platform/single/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/a;->a:Lcom/xingluo/platform/single/sdk/XLSingleSDKPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    return-void
.end method
