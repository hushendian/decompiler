.class public Lcom/xingluo/platform/single/net/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/xingluo/platform/single/net/g;


# instance fields
.field private c:Lcom/xingluo/platform/single/net/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/net/g;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/single/net/g;->b:Lcom/xingluo/platform/single/net/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/net/g;->c:Lcom/xingluo/platform/single/net/e;

    new-instance v0, Lcom/xingluo/platform/single/net/e;

    invoke-direct {v0}, Lcom/xingluo/platform/single/net/e;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/net/g;->c:Lcom/xingluo/platform/single/net/e;

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->c()Lcom/xingluo/platform/single/net/g;

    return-void
.end method

.method public static b()Lcom/xingluo/platform/single/net/f;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->c()Lcom/xingluo/platform/single/net/g;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/net/g;->c:Lcom/xingluo/platform/single/net/e;

    return-object v0
.end method

.method private static c()Lcom/xingluo/platform/single/net/g;
    .locals 2

    sget-object v1, Lcom/xingluo/platform/single/net/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/net/g;->b:Lcom/xingluo/platform/single/net/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/net/g;

    invoke-direct {v0}, Lcom/xingluo/platform/single/net/g;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/net/g;->b:Lcom/xingluo/platform/single/net/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xingluo/platform/single/net/g;->b:Lcom/xingluo/platform/single/net/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
