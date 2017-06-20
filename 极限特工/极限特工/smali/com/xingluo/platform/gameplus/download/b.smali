.class public Lcom/xingluo/platform/gameplus/download/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "GamePlus/downloads"

.field private static b:Lcom/xingluo/platform/gameplus/download/b;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xingluo/platform/gameplus/download/b;->c()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/download/b;
    .locals 2

    const-class v1, Lcom/xingluo/platform/gameplus/download/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/gameplus/download/b;->b:Lcom/xingluo/platform/gameplus/download/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/download/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/download/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/gameplus/download/b;->b:Lcom/xingluo/platform/gameplus/download/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/download/b;->b:Lcom/xingluo/platform/gameplus/download/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GamePlus/downloads"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/download/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/gameplus/download/b;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/b;->c:Ljava/lang/String;

    return-object v0
.end method
