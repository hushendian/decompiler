.class Lcom/xingluo/platform/ad/suspend/q;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/LinearLayout;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout$LayoutParams;

.field g:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

.field private final synthetic i:I

.field private final synthetic j:I

.field private final synthetic k:Ljava/util/List;

.field private final synthetic l:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;IILjava/util/List;Landroid/support/v4/view/ViewPager;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0xa

    const/4 v2, -0x2

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iput p2, p0, Lcom/xingluo/platform/ad/suspend/q;->i:I

    iput p3, p0, Lcom/xingluo/platform/ad/suspend/q;->j:I

    iput-object p4, p0, Lcom/xingluo/platform/ad/suspend/q;->k:Ljava/util/List;

    iput-object p5, p0, Lcom/xingluo/platform/ad/suspend/q;->l:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->b:Landroid/widget/LinearLayout;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "xl_suspension_circle_layout"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->c:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->e:Ljava/util/List;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->f:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->g:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->f:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionIconList:Ljava/util/List;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$24(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 7

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/q;->i:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->l:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$d;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/q;->d:Ljava/util/List;

    invoke-direct {v1, v3, v4}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$d;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->l:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$e;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/q;->e:Ljava/util/List;

    invoke-direct {v1, v3, v4}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$e;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-lt v2, v4, :cond_5

    return-void

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v3, v2

    :goto_2
    const/4 v0, 0x4

    if-lt v3, v0, :cond_2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "xl_suspension_circle_selected"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/q;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->b:Landroid/widget/LinearLayout;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, v3

    iget v4, p0, Lcom/xingluo/platform/ad/suspend/q;->j:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/q;->b:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->k:Ljava/util/List;

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->getGameItemView(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)Landroid/view/View;
    invoke-static {v5, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$25(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/q;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "xl_suspension_circle_normal"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionIconList:Ljava/util/List;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$24(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/q;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/q;->h:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/q;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/q;->a(Ljava/lang/Void;)V

    return-void
.end method
