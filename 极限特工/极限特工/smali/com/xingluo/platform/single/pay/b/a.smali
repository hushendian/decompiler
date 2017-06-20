.class public Lcom/xingluo/platform/single/pay/b/a;
.super Lcom/xingluo/platform/single/view/a;


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/pay/b/a;)Lcom/xingluo/platform/single/pay/ViewType;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->e:Lcom/xingluo/platform/single/pay/ViewType;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/pay/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/EventType;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 1

    const-string v0, "xlMainFootView"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->d:Landroid/widget/TextView;

    return-void
.end method

.method protected d()V
    .locals 2

    const-string v0, "xlMainHeadBack"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->b:Landroid/widget/ImageView;

    const-string v0, "xlMainHeadClose"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->a:Landroid/widget/ImageView;

    const-string v0, "xlMainHeadImage"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->c:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/single/pay/b/b;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/pay/b/b;-><init>(Lcom/xingluo/platform/single/pay/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/b/a;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/single/pay/b/c;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/pay/b/c;-><init>(Lcom/xingluo/platform/single/pay/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->hideKeyBoard()V

    return-void
.end method
