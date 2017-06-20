.class public Lcom/xingluo/platform/single/sdk/e/a;
.super Lcom/xingluo/platform/single/pay/b/e;


# static fields
.field private static m:Lcom/xingluo/platform/single/sdk/e/a;


# instance fields
.field private l:Lcom/xingluo/platform/single/util/i;

.field private n:Lcom/xingluo/platform/single/item/GamePropsInfo;

.field private o:Lcom/xingluo/platform/single/order/Order;

.field private p:Landroid/content/Context;

.field private q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private r:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/xingluo/platform/single/pay/b/e;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    const-class v0, Lcom/xingluo/platform/single/sdk/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->l:Lcom/xingluo/platform/single/util/i;

    iput-object p3, p0, Lcom/xingluo/platform/single/sdk/e/a;->n:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iput-object p5, p0, Lcom/xingluo/platform/single/sdk/e/a;->o:Lcom/xingluo/platform/single/order/Order;

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/e/a;->p:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)Lcom/xingluo/platform/single/sdk/e/a;
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/sdk/e/a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/single/sdk/e/a;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/e/a;->m:Lcom/xingluo/platform/single/sdk/e/a;

    sget-object v0, Lcom/xingluo/platform/single/sdk/e/a;->m:Lcom/xingluo/platform/single/sdk/e/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object p3, p0, Lcom/xingluo/platform/single/sdk/e/a;->e:Lcom/xingluo/platform/single/pay/ViewType;

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    sget v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/xingluo/platform/single/sdk/e/a;->c(Z)V

    :cond_0
    const-string v0, "xlMainFootView"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sdk/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->p:Landroid/content/Context;

    const-string v1, "xl_pay_dialog_pane"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->p:Landroid/content/Context;

    const-string v1, "xl_dialog_tv_main"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "     \u5c0a\u656c\u7684\u7528\u6237,\u60a8\u5373\u5c06\u901a\u8fc7\u8bdd\u8d39\u5bf9\u60a8\u7684\u6e38\u620f\u8d26\u6237\u8fdb\u884c\u5145\u503c,\u4fe1\u606f\u8d39%s\u5143,\u9700\u8981\u53d1\u9001\u4e00\u6761\u77ed\u4fe1,%s\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u5ba2\u670d\u7535\u8bdd:4006555266,\u70b9\u51fb\u786e\u8ba4\u8fdb\u884c\u8d2d\u4e70"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/e/a;->n:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/e/a;->n:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->p:Landroid/content/Context;

    const-string v1, "xl_dialog_btn1"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->g:Landroid/content/Context;

    const-string v1, "xl_dialog_btn2"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->r:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/xingluo/platform/single/util/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->r:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/e/a;->o:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->showProgressDialog(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sdk/d/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/d/c;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/e/a;->e:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v2, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->f:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/e/a;->q:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/single/sdk/d/c;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0
.end method
