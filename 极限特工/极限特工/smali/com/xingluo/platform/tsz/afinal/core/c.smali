.class Lcom/xingluo/platform/tsz/afinal/core/c;
.super Lcom/xingluo/platform/tsz/afinal/core/AsyncTask$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xingluo/platform/tsz/afinal/core/AsyncTask$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/core/c;->a:Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask$d;-><init>(Lcom/xingluo/platform/tsz/afinal/core/AsyncTask$d;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/core/c;->a:Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;->a(Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/core/c;->a:Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/core/c;->a:Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/core/c;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;->b(Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
