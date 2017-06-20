.class Lcom/xingluo/platform/ad/suspend/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v5, -0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->r(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sput-boolean v9, Lcom/xingluo/platform/ad/suspend/s;->isPopupWindowShow:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/j;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/xingluo/platform/ad/suspend/j;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/suspend/j;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xingluo/platform/ad/suspend/j;->e(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xingluo/platform/ad/suspend/j;->d(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xingluo/platform/ad/suspend/j;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xingluo/platform/ad/suspend/j;->c(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->v(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->w(Lcom/xingluo/platform/ad/suspend/s;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->p(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;III)V

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->x(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->k(Lcom/xingluo/platform/ad/suspend/s;)V

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getXlCrossRecommendData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v1, v2

    :goto_2
    if-lt v1, v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/s;->y(Lcom/xingluo/platform/ad/suspend/s;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "statistics_recommend_game_show"

    const-string v2, ""

    invoke-static {v1, v0, v2, v9}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/v;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v4}, Lcom/xingluo/platform/ad/suspend/s;->g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;III)V

    goto :goto_1

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "game"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v1, "statistics_suspend2_show"

    const-string v2, ""

    invoke-static {v1, v0, v2, v9}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
