.class public Lcom/xingluo/platform/single/pay/b/e;
.super Lcom/xingluo/platform/single/pay/b/a;


# instance fields
.field private l:Lcom/xingluo/platform/single/util/i;

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Lcom/xingluo/platform/single/item/GamePropsInfo;

.field private p:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private q:Lcom/xingluo/platform/single/order/Order;

.field private r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

.field private s:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/pay/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->l:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/pay/b/e;->n:Z

    iput-object p3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iput-object p4, p0, Lcom/xingluo/platform/single/pay/b/e;->p:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    iput-object p5, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    iput-boolean p2, p0, Lcom/xingluo/platform/single/pay/b/e;->n:Z

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    return-void
.end method

.method private t()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "xlMainViewLayout"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/b/e;->d()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/b/e;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->l:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mViewType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_1

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_2

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_3

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_4

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "share_last_thirdpay_success"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_ALIPAY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_TENCENTMM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->e:Lcom/xingluo/platform/single/pay/ViewType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->o:Lcom/xingluo/platform/single/pay/ViewType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->p:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_b

    :cond_8
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->b(Z)V

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/pay/b/e;->a(Z)V

    new-instance v4, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {v4}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    check-cast v1, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/xingluo/platform/single/e/a/a;->b(Landroid/content/Context;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Ljava/lang/Object;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/xingluo/platform/single/pay/b/a;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/xingluo/platform/single/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/c;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/pay/b/e;->p:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/b/e;->o:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v5}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/pay/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->r:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a()Lcom/xingluo/platform/single/pay/ViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->g:Landroid/content/Context;

    const-string v2, "bd_new_main_payview"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b/e;->t()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/e;->g:Landroid/content/Context;

    const-string v2, "xl_new_main_payview"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/e;->f:Landroid/view/ViewGroup;

    goto :goto_0
.end method
