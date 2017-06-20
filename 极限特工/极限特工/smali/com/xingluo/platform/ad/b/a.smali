.class public Lcom/xingluo/platform/ad/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:I = 0x320

.field private static c:Lcom/xingluo/platform/ad/b/a;


# instance fields
.field private a:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/b/a;->d:Z

    return-void
.end method

.method public static a()Lcom/xingluo/platform/ad/b/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/b/a;->c:Lcom/xingluo/platform/ad/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/b/a;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/b/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/b/a;->c:Lcom/xingluo/platform/ad/b/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/b/a;->c:Lcom/xingluo/platform/ad/b/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/xingluo/platform/ad/b/a;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/b/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xingluo/platform/ad/b/a;->a:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Lcom/xingluo/platform/ad/b/a;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xingluo/platform/ad/b/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
