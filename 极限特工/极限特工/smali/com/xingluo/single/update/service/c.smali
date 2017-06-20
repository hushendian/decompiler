.class abstract Lcom/xingluo/single/update/service/c;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/single/update/service/c$a;,
        Lcom/xingluo/single/update/service/c$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/xingluo/single/update/service/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/single/update/service/c;->b:Z

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/xingluo/single/update/service/c;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/xingluo/single/update/service/c;->b()I

    move-result v2

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/xingluo/single/update/service/c$b;

    invoke-direct {v7, p0, v9}, Lcom/xingluo/single/update/service/c$b;-><init>(Lcom/xingluo/single/update/service/c;Lcom/xingluo/single/update/service/c$b;)V

    new-instance v8, Lcom/xingluo/single/update/service/c$a;

    invoke-direct {v8, p0, v9}, Lcom/xingluo/single/update/service/c$a;-><init>(Lcom/xingluo/single/update/service/c;Lcom/xingluo/single/update/service/c$a;)V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/service/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/xingluo/single/update/service/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/xingluo/single/update/service/d;-><init>(Lcom/xingluo/single/update/service/c;ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void

    :cond_0
    const-string v0, "MultiIntentService"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "CheckUpdate is failed"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/xingluo/single/update/service/c;->onStart(Landroid/content/Intent;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/xingluo/single/update/service/c;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
