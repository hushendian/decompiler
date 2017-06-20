.class Lcom/xingluo/platform/gameplus/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/j;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->b()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xingluo/platform/gameplus/b/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/j;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/a/j;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a()I

    move-result v0

    if-ne v0, v5, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
