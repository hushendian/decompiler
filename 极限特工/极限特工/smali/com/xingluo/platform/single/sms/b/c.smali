.class public Lcom/xingluo/platform/single/sms/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/sms/b/c;


# instance fields
.field private b:Lcom/xingluo/platform/single/sms/b/b;

.field private c:Lcom/xingluo/platform/single/sms/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/single/sms/b/c;->a:Lcom/xingluo/platform/single/sms/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/b/c;->c:Lcom/xingluo/platform/single/sms/b/d;

    new-instance v0, Lcom/xingluo/platform/single/sms/b/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/b/b;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/b/c;->b:Lcom/xingluo/platform/single/sms/b/b;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sms/b/d;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/sms/b/c;->d()Lcom/xingluo/platform/single/sms/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/b/c;->b()Lcom/xingluo/platform/single/sms/b/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/xingluo/platform/single/sms/b/b;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/sms/b/c;->d()Lcom/xingluo/platform/single/sms/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/b/c;->b:Lcom/xingluo/platform/single/sms/b/b;

    return-object v0
.end method

.method private static declared-synchronized d()Lcom/xingluo/platform/single/sms/b/c;
    .locals 2

    const-class v1, Lcom/xingluo/platform/single/sms/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/sms/b/c;->a:Lcom/xingluo/platform/single/sms/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/b/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/b/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sms/b/c;->a:Lcom/xingluo/platform/single/sms/b/c;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/b/c;->a:Lcom/xingluo/platform/single/sms/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/single/sms/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/b/c;->c:Lcom/xingluo/platform/single/sms/b/d;

    return-void
.end method

.method public b()Lcom/xingluo/platform/single/sms/b/d;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/b/c;->c:Lcom/xingluo/platform/single/sms/b/d;

    return-object v0
.end method
