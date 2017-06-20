.class Lcom/xingluo/single/update/service/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/single/update/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/service/c;


# direct methods
.method private constructor <init>(Lcom/xingluo/single/update/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/service/c$a;->a:Lcom/xingluo/single/update/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/single/update/service/c;Lcom/xingluo/single/update/service/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/single/update/service/c$a;-><init>(Lcom/xingluo/single/update/service/c;)V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    const-string v0, "MultiIntentService"

    const-string v1, "error............"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "CheckUpdate is error............"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    return-void
.end method
