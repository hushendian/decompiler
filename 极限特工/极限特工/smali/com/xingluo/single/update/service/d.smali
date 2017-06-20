.class Lcom/xingluo/single/update/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/service/c;

.field private final synthetic b:I

.field private final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/service/c;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/service/d;->a:Lcom/xingluo/single/update/service/c;

    iput p2, p0, Lcom/xingluo/single/update/service/d;->b:I

    iput-object p3, p0, Lcom/xingluo/single/update/service/d;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/single/update/service/d;->a:Lcom/xingluo/single/update/service/c;

    iget-object v1, p0, Lcom/xingluo/single/update/service/d;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/xingluo/single/update/service/c;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xingluo/single/update/service/d;->a:Lcom/xingluo/single/update/service/c;

    iget v1, p0, Lcom/xingluo/single/update/service/d;->b:I

    invoke-virtual {v0, v1}, Lcom/xingluo/single/update/service/c;->stopSelf(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MultiIntentService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xingluo/single/update/service/d;->a:Lcom/xingluo/single/update/service/c;

    iget v1, p0, Lcom/xingluo/single/update/service/d;->b:I

    invoke-virtual {v0, v1}, Lcom/xingluo/single/update/service/c;->stopSelf(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xingluo/single/update/service/d;->a:Lcom/xingluo/single/update/service/c;

    iget v2, p0, Lcom/xingluo/single/update/service/d;->b:I

    invoke-virtual {v1, v2}, Lcom/xingluo/single/update/service/c;->stopSelf(I)V

    throw v0
.end method
