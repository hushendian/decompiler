.class public Lcom/xingluo/platform/gameplus/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/gameplus/d/a;


# instance fields
.field private b:Lcom/xingluo/platform/gameplus/d/d;

.field private c:Lcom/xingluo/platform/gameplus/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/gameplus/d/a;->a:Lcom/xingluo/platform/gameplus/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->b:Lcom/xingluo/platform/gameplus/d/d;

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->c:Lcom/xingluo/platform/gameplus/d/b;

    new-instance v0, Lcom/xingluo/platform/gameplus/d/d;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/d;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->b:Lcom/xingluo/platform/gameplus/d/d;

    new-instance v0, Lcom/xingluo/platform/gameplus/d/b;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/b;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->c:Lcom/xingluo/platform/gameplus/d/b;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/d/d;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->c()Lcom/xingluo/platform/gameplus/d/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/a;->d()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/xingluo/platform/gameplus/d/b;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->c()Lcom/xingluo/platform/gameplus/d/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/a;->e()Lcom/xingluo/platform/gameplus/d/b;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/xingluo/platform/gameplus/d/a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/gameplus/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/gameplus/d/a;->a:Lcom/xingluo/platform/gameplus/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/d/a;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/d/a;->a:Lcom/xingluo/platform/gameplus/d/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/d/a;->a:Lcom/xingluo/platform/gameplus/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Lcom/xingluo/platform/gameplus/d/d;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->b:Lcom/xingluo/platform/gameplus/d/d;

    return-object v0
.end method

.method private e()Lcom/xingluo/platform/gameplus/d/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/d/a;->c:Lcom/xingluo/platform/gameplus/d/b;

    return-object v0
.end method
