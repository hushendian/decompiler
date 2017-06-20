.class Lcom/xingluo/platform/tsz/afinal/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xingluo/platform/tsz/afinal/b/b/a;

.field public c:Lcom/xingluo/platform/tsz/afinal/b/c/a;

.field public d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field final synthetic j:Lcom/xingluo/platform/tsz/afinal/a;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/tsz/afinal/a;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->j:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->h:I

    iput-boolean v2, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->i:Z

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/e;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->c(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(I)V

    return-void
.end method
