.class Lcom/xingluo/platform/ad/suspend/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/h;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/i;->a:Lcom/xingluo/platform/ad/suspend/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/xingluo/platform/ad/suspend/h;->isPopupWindowShow:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    sget v1, Lcom/xingluo/platform/ad/suspend/h;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    sget-boolean v0, Lcom/xingluo/platform/ad/suspend/h;->isPopupWindowShow:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->lotteryView:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v0, Lcom/xingluo/platform/ad/suspend/h;->dataSize:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->lotteryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
