.class Lcom/xingluo/platform/gameplus/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/service/a;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/xingluo/platform/gameplus/mode/AidlListener;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/service/a;Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/service/b;->a:Lcom/xingluo/platform/gameplus/service/a;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/service/b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/service/b;->c:Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/b;->a:Lcom/xingluo/platform/gameplus/service/a;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/service/a;->a(Lcom/xingluo/platform/gameplus/service/a;)Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/service/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/service/b;->c:Lcom/xingluo/platform/gameplus/mode/AidlListener;

    # invokes: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->addDownloadImpl(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$1(Lcom/xingluo/platform/gameplus/service/GPDownloadService;Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    return-void
.end method
