.class Lcom/xingluo/platform/gameplus/service/a;
.super Lcom/xingluo/platform/gameplus/service/c$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/service/a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    invoke-direct {p0}, Lcom/xingluo/platform/gameplus/service/c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/service/a;)Lcom/xingluo/platform/gameplus/service/GPDownloadService;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            ">;",
            "Lcom/xingluo/platform/gameplus/mode/AidlListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    # getter for: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$0(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/gameplus/service/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/xingluo/platform/gameplus/service/b;-><init>(Lcom/xingluo/platform/gameplus/service/a;Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
