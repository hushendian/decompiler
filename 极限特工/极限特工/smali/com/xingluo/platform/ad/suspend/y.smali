.class Lcom/xingluo/platform/ad/suspend/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/y;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/y;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/y;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/j;->o()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/y;->a:Lcom/xingluo/platform/ad/suspend/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/suspend/j;)V

    sput-boolean v2, Lcom/xingluo/platform/ad/suspend/s;->isPopupWindowShow:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/y;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->k(Lcom/xingluo/platform/ad/suspend/s;)V

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
