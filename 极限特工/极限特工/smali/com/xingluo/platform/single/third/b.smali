.class Lcom/xingluo/platform/single/third/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

.field private final synthetic d:Lcom/xingluo/platform/single/item/XLOrderInfoData;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/third/XLSingleThirdPay;Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/b;->a:Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    iput-object p2, p0, Lcom/xingluo/platform/single/third/b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xingluo/platform/single/third/b;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    iput-object p4, p0, Lcom/xingluo/platform/single/third/b;->d:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/third/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/c;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/b;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/b;->d:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/b;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a()I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/third/b;->d:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/third/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    const/16 v1, 0xbc6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0
.end method
