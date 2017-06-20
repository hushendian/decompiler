.class public Lcom/xingluo/platform/tsz/afinal/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/a$a;,
        Lcom/xingluo/platform/tsz/afinal/a$b;,
        Lcom/xingluo/platform/tsz/afinal/a$c;,
        Lcom/xingluo/platform/tsz/afinal/a$d;
    }
.end annotation


# static fields
.field private static j:Lcom/xingluo/platform/tsz/afinal/a;


# instance fields
.field private a:Lcom/xingluo/platform/tsz/afinal/a$d;

.field private b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

.field private c:Lcom/xingluo/platform/tsz/afinal/b/a/f;

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/b/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->d:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->f:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$d;

    invoke-direct {v0, p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$d;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    const-string v0, "afinalCache"

    invoke-static {p1, v0}, Lcom/xingluo/platform/tsz/afinal/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/b/b;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/b/b/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Lcom/xingluo/platform/tsz/afinal/b/b/a;)Lcom/xingluo/platform/tsz/afinal/a;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/c/b;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/b/c/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Lcom/xingluo/platform/tsz/afinal/b/c/a;)Lcom/xingluo/platform/tsz/afinal/a;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/a;->b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;)Lcom/xingluo/platform/tsz/afinal/a$b;
    .locals 1

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;)Lcom/xingluo/platform/tsz/afinal/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 3

    const-class v1, Lcom/xingluo/platform/tsz/afinal/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/a;->j:Lcom/xingluo/platform/tsz/afinal/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xingluo/platform/tsz/afinal/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/a;->j:Lcom/xingluo/platform/tsz/afinal/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/a;->j:Lcom/xingluo/platform/tsz/afinal/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xingluo/platform/tsz/afinal/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;)Lcom/xingluo/platform/tsz/afinal/a$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/xingluo/platform/tsz/afinal/a$b;->a(Lcom/xingluo/platform/tsz/afinal/a$b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/a$b;->a(Z)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->c:Lcom/xingluo/platform/tsz/afinal/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->c:Lcom/xingluo/platform/tsz/afinal/b/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/f;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)Lcom/xingluo/platform/tsz/afinal/a$b;
    .locals 2

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/xingluo/platform/tsz/afinal/a$a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/a$a;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/a$a;->a()Lcom/xingluo/platform/tsz/afinal/a$b;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V
    .locals 4

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->h()Lcom/xingluo/platform/tsz/afinal/a;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object p3, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_6

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/a;->a(Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$b;

    invoke-direct {v0, p0, p1, p3}, Lcom/xingluo/platform/tsz/afinal/a$b;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Landroid/view/View;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a$a;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/xingluo/platform/tsz/afinal/a$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/xingluo/platform/tsz/afinal/a$b;)V

    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->i:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/a$b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xingluo/platform/tsz/afinal/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->l()V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/tsz/afinal/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->k()V

    return-void
.end method

.method static synthetic d(Lcom/xingluo/platform/tsz/afinal/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/xingluo/platform/tsz/afinal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/xingluo/platform/tsz/afinal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/xingluo/platform/tsz/afinal/a;)Lcom/xingluo/platform/tsz/afinal/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/tsz/afinal/a;)Lcom/xingluo/platform/tsz/afinal/a$d;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    return-object v0
.end method

.method private h()Lcom/xingluo/platform/tsz/afinal/a;
    .locals 5

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->h:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->e:F

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->e:F

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v2, v2, Lcom/xingluo/platform/tsz/afinal/a$d;->e:F

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a(Landroid/content/Context;F)V

    :goto_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->g:I

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->g:I

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->b(I)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-boolean v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->i:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a(Z)V

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-direct {v1, v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;-><init>(Lcom/xingluo/platform/tsz/afinal/b/a/c$a;)V

    iput-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->h:I

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/b;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/b;-><init>(Lcom/xingluo/platform/tsz/afinal/a;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/f;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->c:Lcom/xingluo/platform/tsz/afinal/b/c/a;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/f;-><init>(Lcom/xingluo/platform/tsz/afinal/b/c/a;Lcom/xingluo/platform/tsz/afinal/b/a/c;)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->c:Lcom/xingluo/platform/tsz/afinal/b/a/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->h:Z

    :cond_1
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->f:I

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->f:I

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a(Landroid/content/Context;F)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i()Lcom/xingluo/platform/tsz/afinal/b/a/e;
    .locals 2

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/e;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->c()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->c(I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->b()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->d()V

    iput-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    sput-object v1, Lcom/xingluo/platform/tsz/afinal/a;->j:Lcom/xingluo/platform/tsz/afinal/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->c:Lcom/xingluo/platform/tsz/afinal/b/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/f;->b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->e:F

    return-object p0
.end method

.method public a(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public a(Lcom/xingluo/platform/tsz/afinal/b/b/a;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput-object p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->b:Lcom/xingluo/platform/tsz/afinal/b/b/a;

    return-object p0
.end method

.method public a(Lcom/xingluo/platform/tsz/afinal/b/c/a;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput-object p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->c:Lcom/xingluo/platform/tsz/afinal/b/c/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput-object p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput-boolean p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->i:Z

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->i()Lcom/xingluo/platform/tsz/afinal/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(I)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->i()Lcom/xingluo/platform/tsz/afinal/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(I)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(I)V

    invoke-virtual {v0, p5}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->i()Lcom/xingluo/platform/tsz/afinal/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/b/a/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a;->i()Lcom/xingluo/platform/tsz/afinal/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->k:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/tsz/afinal/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/a;->d:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b(I)V

    return-object p0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/a;->g()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/a;->d:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a(I)V

    return-object p0
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;->d([Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/a;->e:Z

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->f:I

    return-object p0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->c()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;->d([Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method

.method public f(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->g:I

    return-object p0
.end method

.method public f()V
    .locals 4

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;->d([Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(I)Lcom/xingluo/platform/tsz/afinal/a;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a;->a:Lcom/xingluo/platform/tsz/afinal/a$d;

    iput p1, v0, Lcom/xingluo/platform/tsz/afinal/a$d;->h:I

    :cond_0
    return-object p0
.end method

.method public g()V
    .locals 4

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;->d([Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a$c;->d([Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method
