.class public Lcom/xingluo/platform/single/pay/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/pay/listener/c;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/pay/a/a;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/pay/a/a;)Lcom/xingluo/platform/single/callback/IXLSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 3

    const/16 v2, 0xbc2

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->e()Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    if-eq v0, v1, :cond_5

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->e()Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK_OTHER:Lcom/xingluo/platform/single/util/PayOrderChannel;

    if-eq v0, v1, :cond_5

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->e()Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    if-eq v0, v1, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->e()Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    if-eq v0, v1, :cond_5

    :cond_4
    if-eq p1, v2, :cond_5

    const/16 v0, 0xbc6

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1b5a

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbc3

    if-ne p1, v0, :cond_7

    :cond_5
    if-eq p1, v2, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->e()Lcom/xingluo/platform/single/util/PayOrderChannel;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/pay/a/a;->b(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/single/json/a;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/a/a;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/pay/a/a;->b(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto :goto_0
.end method

.method public a(Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/a/a;->b:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-void
.end method

.method public b(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V
    .locals 8

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    invoke-static {v7}, Lcom/xingluo/platform/single/view/c;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\n\u8d2d\u4e70\u672a\u6210\u529f,\u8bf7\u8fd4\u56de\u6e38\u620f\u91cd\u65b0\u8d2d\u4e70\n"

    const-string v3, "\u8fd4\u56de\u6e38\u620f"

    new-instance v4, Lcom/xingluo/platform/single/pay/a/b;

    invoke-direct {v4, p0, p1, p2, v7}, Lcom/xingluo/platform/single/pay/a/b;-><init>(Lcom/xingluo/platform/single/pay/a/a;ILcom/xingluo/platform/single/item/XLOrderInfoData;Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V

    const/4 v5, 0x0

    const-string v6, "XLPayController.onPlatformRechargeResult"

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/c;->a()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->a:Landroid/app/Dialog;

    const-string v1, "xlMainHeadBack"

    invoke-static {v7, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/a/a;->a:Landroid/app/Dialog;

    const-string v1, "xl_dialog_tv_main"

    invoke-static {v7, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
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
