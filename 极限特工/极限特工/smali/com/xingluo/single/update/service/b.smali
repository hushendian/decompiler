.class Lcom/xingluo/single/update/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/single/update/b/e;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/service/CheckUpdateService;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/service/CheckUpdateService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/service/b;->a:Lcom/xingluo/single/update/service/CheckUpdateService;

    iput-object p2, p0, Lcom/xingluo/single/update/service/b;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/xingluo/single/update/service/b;->c:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/single/update/service/b;->b:Landroid/os/Bundle;

    const-string v1, "progress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/xingluo/single/update/service/b;->b:Landroid/os/Bundle;

    const-string v1, "max"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/xingluo/single/update/service/b;->a:Lcom/xingluo/single/update/service/CheckUpdateService;

    iget-object v1, p0, Lcom/xingluo/single/update/service/b;->c:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xingluo/single/update/service/b;->b:Landroid/os/Bundle;

    # invokes: Lcom/xingluo/single/update/service/CheckUpdateService;->sendResult(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/single/update/service/CheckUpdateService;->access$0(Lcom/xingluo/single/update/service/CheckUpdateService;Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    return-void
.end method
