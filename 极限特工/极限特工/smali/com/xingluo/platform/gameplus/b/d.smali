.class public Lcom/xingluo/platform/gameplus/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xingluo/platform/gameplus/b/g;

.field private b:Lcom/xingluo/platform/gameplus/b/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->a:Lcom/xingluo/platform/gameplus/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/b/g;

    invoke-direct {v0, p1}, Lcom/xingluo/platform/gameplus/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->a:Lcom/xingluo/platform/gameplus/b/g;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->a:Lcom/xingluo/platform/gameplus/b/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->b:Lcom/xingluo/platform/gameplus/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/b/b;

    invoke-direct {v0, p1}, Lcom/xingluo/platform/gameplus/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->b:Lcom/xingluo/platform/gameplus/b/a;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/b/d;->b:Lcom/xingluo/platform/gameplus/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
