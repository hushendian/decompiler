.class Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/service/GPDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->isWifi()Z

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->isGprs()Z

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    const-string v0, "connectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network connected;Number of listeners:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    # getter for: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;
    invoke-static {v4}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$2(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    # getter for: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;
    invoke-static {v0}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$2(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    # getter for: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;
    invoke-static {v3}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$2(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/d;

    if-nez v1, :cond_1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->a()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "connectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network disconnected;Number of listeners:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/gameplus/service/GPDownloadService$a;->a:Lcom/xingluo/platform/gameplus/service/GPDownloadService;

    # getter for: Lcom/xingluo/platform/gameplus/service/GPDownloadService;->maps:Ljava/util/TreeMap;
    invoke-static {v4}, Lcom/xingluo/platform/gameplus/service/GPDownloadService;->access$2(Lcom/xingluo/platform/gameplus/service/GPDownloadService;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/d;->b()V

    goto :goto_1
.end method
