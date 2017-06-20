.class public Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static isShowView:Z

.field public static thirdPayActivity:Landroid/app/Activity;


# instance fields
.field private mLogger:Lcom/xingluo/platform/single/util/i;

.field private mViewContainer:Landroid/widget/RelativeLayout;

.field private order:Lcom/xingluo/platform/single/order/Order;

.field private payMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private viewGroup:Landroid/view/ViewGroup;

.field private viewStubGoods:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    return-void
.end method

.method private getThirdChannel()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/single/third/f/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "otherPaymethodher++payMethods = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    return-object v0
.end method

.method private setButtons(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->a()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->b()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "include_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "alipay"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "alipay"

    :goto_1
    const-string v1, "tencentmm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "tencentmm"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pay_other_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_icon"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "channel_"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    const-string v0, "item_img"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "item_name"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "item_main"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/xingluo/platform/single/util/q;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v3, v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "pay_other_tencentmm_icon_unable"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    :cond_2
    invoke-static {p0}, Lcom/xingluo/platform/single/util/q;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "pay_other_tencentmm_icon_unable"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pay_other_alipay_icon"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v0, "channel_alipay"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto/16 :goto_2

    :cond_5
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "pay_other_tencentmm_icon"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v0, "channel_tencentmm"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto/16 :goto_2

    :cond_6
    move v3, v4

    move v1, v4

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public backDialog()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    return-void
.end method

.method protected getId(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    sput-boolean v3, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->isShowView:Z

    const-string v0, "xl_container"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->setContentView(I)V

    const-string v0, "xl_viewcontainer"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    const-string v0, "xl_new_main_payview"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "xlMainFootView"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->setContainerFat()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "xlMainHeadBack"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/single/third/activity/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/third/activity/a;-><init>(Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "xlPayThirdPart"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewStubGoods:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewStubGoods:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "xlTxtGoodsName"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v2, "xlTxtGoodsPrice"

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "xlTxtOtherPaymethod"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v2, "pay_recent_linearlayout"

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    const-string v3, "pay_other_linearlayout"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v1, "\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getThirdChannel()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->setButtons(Ljava/util/List;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    :goto_1
    sget-boolean v2, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->isShowView:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->d:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->onPlatformRechargeResult(Landroid/app/Activity;Lcom/xingluo/platform/single/third/XLThirdErrorCode;Lcom/xingluo/platform/single/item/XLOrderInfoData;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/xingluo/platform/single/util/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "json147_alipay"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v1, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALIPAY:Ljava/lang/String;

    :cond_1
    const-string v1, "json147_weixin"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALIPAY:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    iget-object v5, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    iget-object v5, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    iget-object v5, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->thirdPayActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "order"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/order/Order;

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    const-string v0, "weixin"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->isShowView:Z

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "webpay"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->isShowView:Z

    const-string v0, "payType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payMethods"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_1
    array-length v1, v0

    if-lt v4, v1, :cond_1

    const-string v0, "tag"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->getInstance()Lcom/xingluo/platform/single/third/XLSingleThirdPay;

    move-result-object v0

    iget-object v3, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->order:Lcom/xingluo/platform/single/order/Order;

    iget-object v5, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/third/XLSingleThirdPay;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;ILjava/util/List;)V

    goto :goto_0

    :cond_1
    aget-object v1, v0, v4

    check-cast v1, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    iget-object v5, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->payMethods:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->initView()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->backDialog()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public setContainerFat()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method

.method public setContainerThin()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method
