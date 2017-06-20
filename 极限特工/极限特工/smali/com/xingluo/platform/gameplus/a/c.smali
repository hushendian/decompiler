.class public Lcom/xingluo/platform/gameplus/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/gameplus/a/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/gameplus/a/c;->a:Lcom/xingluo/platform/gameplus/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/a/c;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/gameplus/a/c;->a:Lcom/xingluo/platform/gameplus/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/a/c;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/a/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/a/c;->a:Lcom/xingluo/platform/gameplus/a/c;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/a/c;->a:Lcom/xingluo/platform/gameplus/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/gameplus/utils/g;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/c;->b:Landroid/content/Context;

    sput-object p3, Lcom/xingluo/platform/gameplus/a/k;->d:Ljava/lang/String;

    sput-object p2, Lcom/xingluo/platform/gameplus/a/k;->c:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/gameplus/a/d;->a()Lcom/xingluo/platform/gameplus/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/d;->b()V

    return-void
.end method

.method public a(Lcom/xingluo/platform/gameplus/a/a/a;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/d;->a()Lcom/xingluo/platform/gameplus/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xingluo/platform/gameplus/install/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xingluo/platform/gameplus/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/xingluo/platform/gameplus/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
