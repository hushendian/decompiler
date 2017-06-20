.class public Lcom/xingluo/platform/gameplus/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/xingluo/platform/gameplus/b/e;


# instance fields
.field a:Lcom/xingluo/platform/gameplus/b/d;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/b/e;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/gameplus/b/d;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/b/d;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/b/e;->a:Lcom/xingluo/platform/gameplus/b/d;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/b/e;->d:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/b/f;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->c()Lcom/xingluo/platform/gameplus/b/e;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/b/e;->d()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/xingluo/platform/gameplus/b/a;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->c()Lcom/xingluo/platform/gameplus/b/e;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/b/e;->e()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/xingluo/platform/gameplus/b/e;
    .locals 2

    sget-object v1, Lcom/xingluo/platform/gameplus/b/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/gameplus/b/e;->c:Lcom/xingluo/platform/gameplus/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/b/e;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/b/e;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/b/e;->c:Lcom/xingluo/platform/gameplus/b/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xingluo/platform/gameplus/b/e;->c:Lcom/xingluo/platform/gameplus/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Lcom/xingluo/platform/gameplus/b/f;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/e;->a:Lcom/xingluo/platform/gameplus/b/d;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/b/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/b/d;->a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/xingluo/platform/gameplus/b/a;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/e;->a:Lcom/xingluo/platform/gameplus/b/d;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/b/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/b/d;->b(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v0

    return-object v0
.end method
