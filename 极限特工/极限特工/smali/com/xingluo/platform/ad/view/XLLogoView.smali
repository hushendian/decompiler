.class public Lcom/xingluo/platform/ad/view/XLLogoView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static e:Lcom/xingluo/platform/single/util/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout$LayoutParams;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/graphics/Bitmap;

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/view/XLLogoView;->e:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/view/XLLogoView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a()Lcom/xingluo/platform/single/util/i;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/view/XLLogoView;->e:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/view/XLLogoView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/view/XLLogoView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/view/XLLogoView;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->b:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->b:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/view/XLLogoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->a:Landroid/content/Context;

    const-string v2, "shanping_1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->b:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/ad/view/XLLogoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/xingluo/platform/ad/view/e;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/view/e;-><init>(Lcom/xingluo/platform/ad/view/XLLogoView;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->f:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->f:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/XLLogoView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
