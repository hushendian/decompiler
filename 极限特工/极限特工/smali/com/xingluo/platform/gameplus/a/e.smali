.class Lcom/xingluo/platform/gameplus/a/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    const-string v2, "tim1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/gameplus/utils/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/xingluo/platform/gameplus/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/xingluo/platform/gameplus/b/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xingluo/platform/gameplus/utils/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "tim1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f13\u5b58\u56fe\u7247\uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/gameplus/utils/g;->c(Ljava/lang/String;)V

    :cond_2
    invoke-static {v3}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/gameplus/utils/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/xingluo/platform/gameplus/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/xingluo/platform/gameplus/b/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/gameplus/utils/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/gameplus/utils/g;->c(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
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

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;)Lcom/xingluo/platform/gameplus/service/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "tim"

    const-string v1, "\u670d\u52a1\u7ed1\u5b9a\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;)Lcom/xingluo/platform/gameplus/service/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xingluo/platform/gameplus/service/c;->a(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "tim"

    const-string v1, "\u670d\u52a1\u7ed1\u5b9a\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/a/d;->b:Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/gameplus/a/e;->a(Ljava/util/List;Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    invoke-direct {p0, v0}, Lcom/xingluo/platform/gameplus/a/e;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->b()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/xingluo/platform/gameplus/b/a;->d(Ljava/lang/String;)Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-static {v3, v1}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/d;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/d;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/xingluo/platform/gameplus/a/e;->a:Lcom/xingluo/platform/gameplus/a/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
