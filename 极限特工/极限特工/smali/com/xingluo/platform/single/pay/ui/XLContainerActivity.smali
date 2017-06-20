.class public Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/xingluo/platform/single/pay/listener/IXLOrderViewCallback;
.implements Lcom/xingluo/platform/single/pay/listener/a;


# static fields
.field private static mLogger:Lcom/xingluo/platform/single/util/i;


# instance fields
.field private abstractPayUICommand:Lcom/xingluo/platform/single/pay/AbstractPayUICommand;

.field private allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private curOrder:Lcom/xingluo/platform/single/order/Order;

.field private mBaseView:Lcom/xingluo/platform/single/view/a;

.field private mLoadingDialog:Lcom/xingluo/platform/single/view/g;

.field private mViewContainer:Landroid/widget/RelativeLayout;

.field private mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/xingluo/platform/single/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    return-void
.end method

.method public constructor <init>(Lcom/xingluo/platform/single/pay/AbstractPayUICommand;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->abstractPayUICommand:Lcom/xingluo/platform/single/pay/AbstractPayUICommand;

    return-void
.end method

.method private findLastView()Lcom/xingluo/platform/single/view/a;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/view/a;

    :cond_0
    return-object v0
.end method

.method private findPenultView()Lcom/xingluo/platform/single/view/a;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/view/a;

    :cond_0
    return-object v0
.end method

.method private findUnrayoViewById(I)Lcom/xingluo/platform/single/view/a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0
.end method

.method private getViewStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/xingluo/platform/single/view/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "xl_viewcontainer"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_to_duoku_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/GamePropsInfo;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "all_egmae_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLAllParams;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/order/Order;

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->curOrder:Lcom/xingluo/platform/single/order/Order;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/single/e/a/a;->a(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V

    new-instance v0, Lcom/xingluo/platform/single/view/g;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    return-void
.end method

.method private initView()V
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/pay/b/e;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v4, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->curOrder:Lcom/xingluo/platform/single/order/Order;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/single/pay/b/e;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->addView(Ljava/lang/Object;Lcom/xingluo/platform/single/view/a;)V

    :cond_0
    return-void
.end method

.method private popView()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private pushView(Lcom/xingluo/platform/single/view/a;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/Object;Lcom/xingluo/platform/single/view/a;)V
    .locals 3

    invoke-virtual {p2, p1}, Lcom/xingluo/platform/single/view/a;->a(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/Intent;

    const-string v0, "cp_to_duoku_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/view/a;->g()Lcom/xingluo/platform/single/pay/ViewType;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    if-ne v1, v2, :cond_1

    const-string v1, "onlysms"

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v0

    const/16 v1, 0x1b5a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xingluo/platform/single/view/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/view/a;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/view/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->setContainerThin()V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/xingluo/platform/single/view/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->pushView(Lcom/xingluo/platform/single/view/a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->setContainerFat()V

    goto :goto_1
.end method

.method public clearViewStack()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public closePaycenterActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-static {p0}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/c;->c()V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->releaseResource()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getCurrentView()Lcom/xingluo/platform/single/view/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    return-object v0
.end method

.method public hideKeyBoard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public initView(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/pay/b/e;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iget-object v4, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    iget-object v5, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->curOrder:Lcom/xingluo/platform/single/order/Order;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/single/pay/b/e;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {p0, p2, v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->addView(Ljava/lang/Object;Lcom/xingluo/platform/single/view/a;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "xl_container"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->init()V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->b:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->initView(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(Lcom/xingluo/platform/single/pay/EventType;II)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v10

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v10, :cond_1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->findLastView()Lcom/xingluo/platform/single/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->g()Lcom/xingluo/platform/single/pay/ViewType;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->d:Lcom/xingluo/platform/single/pay/EventType;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->i()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/pay/EventType;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-static {p0}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v2, "payment_not_finish_tip"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/xingluo/platform/single/pay/ui/b;

    invoke-direct {v6, p0}, Lcom/xingluo/platform/single/pay/ui/b;-><init>(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V

    const-string v8, "XLContainerActivity.onKeyDown"

    iget-object v4, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/view/a;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    move v9, v7

    :goto_1
    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/view/c;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->q()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->n()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->p()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->o()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->r()V

    :cond_0
    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->hideKeyBoard()V

    return-void
.end method

.method public onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/pay/EventType;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/xingluo/platform/single/pay/EventType;->d:Lcom/xingluo/platform/single/pay/EventType;

    if-ne v0, p2, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->findPenultView()Lcom/xingluo/platform/single/view/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/view/a;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->setContainerThin()V

    :goto_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->popView()V

    :goto_1
    sget-object v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->setContainerFat()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v2, "payment_not_finish_tip"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/xingluo/platform/single/pay/ui/a;

    invoke-direct {v6, p0}, Lcom/xingluo/platform/single/pay/ui/a;-><init>(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V

    const-string v8, "XLContainerActivity.onUICommend"

    iget-object v4, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mBaseView:Lcom/xingluo/platform/single/view/a;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/view/a;->s()Z

    move-result v4

    if-eqz v4, :cond_3

    move v9, v7

    :goto_2
    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/view/c;

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;I)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "onUICommand start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->abstractPayUICommand:Lcom/xingluo/platform/single/pay/AbstractPayUICommand;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/pay/AbstractPayUICommand;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public releaseResource()V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->clearViewStack()V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/e/a/a;->a(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V

    return-void
.end method

.method public setContainerFat()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method

.method public setContainerThin()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/view/g;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "showProgressDialog ...."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->mLoadingDialog:Lcom/xingluo/platform/single/view/g;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/view/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateView(Lcom/xingluo/platform/single/pay/EventType;I)V
    .locals 0

    return-void
.end method

.method public updateView(Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/pay/EventType;->f:Lcom/xingluo/platform/single/pay/EventType;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/pay/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->propsInfo:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/e/a/a;->d()Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/xingluo/platform/single/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Lcom/xingluo/platform/single/pay/EventType;)V

    :cond_0
    return-void
.end method
