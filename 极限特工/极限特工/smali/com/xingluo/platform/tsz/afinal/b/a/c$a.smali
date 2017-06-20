.class public Lcom/xingluo/platform/tsz/afinal/b/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/io/File;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x800000

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->c:I

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->e:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->f:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->g:Z

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->d:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x800000

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->c:I

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->e:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->f:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->g:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->d:Ljava/io/File;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    return-void
.end method

.method public a(Landroid/content/Context;F)V
    .locals 2

    const/high16 v1, 0x44800000    # 1024.0f

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->g:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->b:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->c:I

    return-void
.end method
