.class final Lcom/yuelan/codelib/download/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yuelan/codelib/download/DownLoadService;


# direct methods
.method constructor <init>(Lcom/yuelan/codelib/download/DownLoadService;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/e;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadCast_download_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/codelib/download/e;->a:Lcom/yuelan/codelib/download/DownLoadService;

    iget-object v0, v0, Lcom/yuelan/codelib/download/DownLoadService;->hanlder_change:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
