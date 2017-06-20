.class public Lcom/xingluo/platform/ad/a/a;
.super Landroid/support/v4/view/PagerAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xingluo/platform/ad/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/xingluo/platform/ad/view/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;",
            "Lcom/xingluo/platform/ad/view/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/ad/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xingluo/platform/ad/a/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/xingluo/platform/ad/a/a;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/xingluo/platform/ad/a/a;->d:Lcom/xingluo/platform/ad/view/a;

    return-void
.end method

.method private a(Ljava/util/List;I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;I)",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;"
        }
    .end annotation

    new-instance v1, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->l()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(I)V

    return-object v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/a/a;->c:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Lcom/xingluo/platform/ad/a/a;->a(Ljava/util/List;I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/f/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/a/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iA:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/a/a;->d:Lcom/xingluo/platform/ad/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/a/a;->d:Lcom/xingluo/platform/ad/view/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/view/a;->b()V

    goto :goto_0
.end method
