.class Lcom/xingluo/platform/tsz/afinal/a$b;
.super Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xingluo/platform/tsz/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/tsz/afinal/a;

.field private b:Ljava/lang/Object;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/xingluo/platform/tsz/afinal/b/a/e;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/tsz/afinal/a;Landroid/view/View;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->c:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/tsz/afinal/a$b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private h()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Landroid/view/View;)Lcom/xingluo/platform/tsz/afinal/a$b;

    move-result-object v1

    if-ne p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/a;->d(Lcom/xingluo/platform/tsz/afinal/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v3}, Lcom/xingluo/platform/tsz/afinal/a;->e(Lcom/xingluo/platform/tsz/afinal/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/a$b;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/a$b;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a$b;->h()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/a;->f(Lcom/xingluo/platform/tsz/afinal/a;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/a;->a(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/a;->g(Lcom/xingluo/platform/tsz/afinal/a;)Lcom/xingluo/platform/tsz/afinal/b/a/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    return-object v0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v3}, Lcom/xingluo/platform/tsz/afinal/a;->d(Lcom/xingluo/platform/tsz/afinal/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/a$b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->f(Lcom/xingluo/platform/tsz/afinal/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/a$b;->h()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v1}, Lcom/xingluo/platform/tsz/afinal/a;->h(Lcom/xingluo/platform/tsz/afinal/a;)Lcom/xingluo/platform/tsz/afinal/a$d;

    move-result-object v1

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->b:Lcom/xingluo/platform/tsz/afinal/b/b/a;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-interface {v1, v0, p1, v2}, Lcom/xingluo/platform/tsz/afinal/b/b/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/xingluo/platform/tsz/afinal/b/a/e;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v1}, Lcom/xingluo/platform/tsz/afinal/a;->h(Lcom/xingluo/platform/tsz/afinal/a;)Lcom/xingluo/platform/tsz/afinal/a$d;

    move-result-object v1

    iget-object v1, v1, Lcom/xingluo/platform/tsz/afinal/a$d;->b:Lcom/xingluo/platform/tsz/afinal/b/b/a;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->d:Lcom/xingluo/platform/tsz/afinal/b/a/e;

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/xingluo/platform/tsz/afinal/b/b/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$b;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->d(Lcom/xingluo/platform/tsz/afinal/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->d(Lcom/xingluo/platform/tsz/afinal/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$b;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
