.class public Lcom/xingluo/platform/single/json/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/json/c;


# instance fields
.field private b:Lcom/xingluo/platform/single/json/a;

.field private c:Lcom/xingluo/platform/single/json/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/single/json/c;->a:Lcom/xingluo/platform/single/json/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/json/c;->b:Lcom/xingluo/platform/single/json/a;

    iput-object v0, p0, Lcom/xingluo/platform/single/json/c;->c:Lcom/xingluo/platform/single/json/d;

    new-instance v0, Lcom/xingluo/platform/single/json/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/a;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/json/c;->b:Lcom/xingluo/platform/single/json/a;

    new-instance v0, Lcom/xingluo/platform/single/json/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/d;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/json/c;->c:Lcom/xingluo/platform/single/json/d;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/json/a;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->d()Lcom/xingluo/platform/single/json/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/c;->e()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/xingluo/platform/single/json/d;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->d()Lcom/xingluo/platform/single/json/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/c;->f()Lcom/xingluo/platform/single/json/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 0

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->d()Lcom/xingluo/platform/single/json/c;

    return-void
.end method

.method private static declared-synchronized d()Lcom/xingluo/platform/single/json/c;
    .locals 2

    const-class v1, Lcom/xingluo/platform/single/json/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/json/c;->a:Lcom/xingluo/platform/single/json/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/json/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/json/c;->a:Lcom/xingluo/platform/single/json/c;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/json/c;->a:Lcom/xingluo/platform/single/json/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Lcom/xingluo/platform/single/json/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/json/c;->b:Lcom/xingluo/platform/single/json/a;

    return-object v0
.end method

.method private f()Lcom/xingluo/platform/single/json/d;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/json/c;->c:Lcom/xingluo/platform/single/json/d;

    return-object v0
.end method
