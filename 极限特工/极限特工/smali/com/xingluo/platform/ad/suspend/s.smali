.class public Lcom/xingluo/platform/ad/suspend/s;
.super Lcom/xingluo/platform/ad/suspend/h;


# static fields
.field private static a:Lcom/xingluo/platform/ad/suspend/s; = null

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x5


# instance fields
.field private A:Landroid/view/View$OnTouchListener;

.field private B:Landroid/view/View$OnTouchListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnTouchListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/os/Handler;

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/Display;

.field private g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Lcom/xingluo/platform/ad/suspend/j;

.field private m:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:[I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/h;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->n:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->o:Z

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/s;->p:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->s:[I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/s;->v:F

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/s;->w:F

    iput v2, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    new-instance v0, Lcom/xingluo/platform/ad/suspend/t;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/t;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->A:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/u;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/u;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->B:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/v;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/v;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/w;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/w;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/x;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/x;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->E:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/y;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/y;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/z;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/z;-><init>(Lcom/xingluo/platform/ad/suspend/s;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->G:Landroid/os/Handler;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/s;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->a:Lcom/xingluo/platform/ad/suspend/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/s;->a:Lcom/xingluo/platform/ad/suspend/s;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->a:Lcom/xingluo/platform/ad/suspend/s;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;F)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/s;->v:F

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/s;->r:I

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/s;->d(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/suspend/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/s;->l:Lcom/xingluo/platform/ad/suspend/j;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/s;->z:Z

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/suspend/s;F)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/s;->w:F

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/suspend/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/s;->p:Z

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/suspend/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->x:Z

    return v0
.end method

.method private c(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->o()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/s;->q:I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v2, "bd_suspend_icon_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v2, "xl_su_lottery_view"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/s;->d(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/s;->b(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    return-void

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v2, "xl_suspend_icon_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/suspend/s;F)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/s;->t:F

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/suspend/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/s;->o:Z

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/suspend/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->m:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    return-object v0
.end method

.method private d(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    sput v0, Lcom/xingluo/platform/ad/suspend/s;->dataSize:I

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v1, "xl_suspension_btn_left_selector"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xingluo/platform/ad/suspend/s;->resourceId:I

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->x:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->B:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    sget-boolean v0, Lcom/xingluo/platform/single/util/a;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->q()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->A:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->y:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->B:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/s;->ivSuspensionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->x:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/xingluo/platform/single/util/a;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->q()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->A:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/s;->lotteryView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/xingluo/platform/ad/suspend/l;->a()Lcom/xingluo/platform/ad/suspend/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/l;->b()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/xingluo/platform/ad/suspend/s;F)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/s;->u:F

    return-void
.end method

.method static synthetic e(Lcom/xingluo/platform/ad/suspend/s;)F
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->v:F

    return v0
.end method

.method static synthetic f(Lcom/xingluo/platform/ad/suspend/s;)F
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->w:F

    return v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->handlerImageView:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->runnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/xingluo/platform/ad/suspend/s;->delayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/ad/suspend/s;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->r:I

    return v0
.end method

.method static synthetic i(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->j:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic j(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->D:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/s;->f()V

    return-void
.end method

.method static synthetic l(Lcom/xingluo/platform/ad/suspend/s;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->f:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic n(Lcom/xingluo/platform/ad/suspend/s;)F
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->t:F

    return v0
.end method

.method static synthetic o(Lcom/xingluo/platform/ad/suspend/s;)F
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->u:F

    return v0
.end method

.method static synthetic p(Lcom/xingluo/platform/ad/suspend/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->o:Z

    return v0
.end method

.method static synthetic q(Lcom/xingluo/platform/ad/suspend/s;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic r(Lcom/xingluo/platform/ad/suspend/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->p:Z

    return v0
.end method

.method static synthetic s(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->C:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic t(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/j;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->l:Lcom/xingluo/platform/ad/suspend/j;

    return-object v0
.end method

.method static synthetic u(Lcom/xingluo/platform/ad/suspend/s;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    return-object v0
.end method

.method static synthetic v(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->E:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic w(Lcom/xingluo/platform/ad/suspend/s;)[I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->s:[I

    return-object v0
.end method

.method static synthetic x(Lcom/xingluo/platform/ad/suspend/s;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->F:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lcom/xingluo/platform/ad/suspend/s;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->q:I

    return v0
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/s;->m:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->handlerImageView:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->j:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->i:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->f:Landroid/view/Display;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x5a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/s;->c(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->n:Z

    :goto_0
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->n:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/s;->n:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->G:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->q:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v2, "xl_suspension_left_view"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-virtual {v0, p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->setup(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/s;->f()V

    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/s;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->e:Landroid/app/Activity;

    const-string v2, "xl_suspension_view2"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->g:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-virtual {v0, p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->addListView(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->G:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->l:Lcom/xingluo/platform/ad/suspend/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->l:Lcom/xingluo/platform/ad/suspend/j;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/j;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->l:Lcom/xingluo/platform/ad/suspend/j;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/ad/suspend/s;->isPopupWindowShow:Z

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/s;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/s;->handlerImageView:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/s;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
