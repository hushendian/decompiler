.class Lcom/xingluo/platform/ad/suspend/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->d(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/s;->handlerImageView:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/s;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v0, v6, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bd_suspend_icon_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->d(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :goto_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->r(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "xl_suspend_icon_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->e(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2

    int-to-float v3, v2

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->f(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->h(Lcom/xingluo/platform/ad/suspend/s;)I

    move-result v3

    sub-int v3, v0, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v5}, Lcom/xingluo/platform/ad/suspend/s;->f(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->i(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    int-to-float v1, v2

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;F)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v6}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;Z)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v3, v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v5}, Lcom/xingluo/platform/ad/suspend/s;->e(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v5}, Lcom/xingluo/platform/ad/suspend/s;->m(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->m(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v6}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/suspend/s;Z)V

    :goto_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->i(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/suspend/s;Z)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->m(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3, v6}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/suspend/s;Z)V

    :goto_4
    sget-object v3, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    sget-object v4, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    int-to-float v0, v0

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v5}, Lcom/xingluo/platform/ad/suspend/s;->n(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gez v0, :cond_6

    int-to-float v0, v2

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/s;->o(Lcom/xingluo/platform/ad/suspend/s;)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v4

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v6}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;Z)V

    :goto_5
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->i(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->p(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "xl_suspension_btn_left_selector"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_6
    sput v0, Lcom/xingluo/platform/ad/suspend/s;->resourceId:I

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->k(Lcom/xingluo/platform/ad/suspend/s;)V

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->m(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3, v1}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/suspend/s;Z)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->s(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "xl_suspension_btn_right_selector"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/u;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
