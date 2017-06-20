.class public Lcom/xingluo/platform/tsz/afinal/b/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/b/a/g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/b/a/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    iput p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->a:I

    iput p2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/xingluo/platform/tsz/afinal/b/a/g$a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;-><init>(ILcom/xingluo/platform/tsz/afinal/b/a/g$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/xingluo/platform/tsz/afinal/b/a/g$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->c:I

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
