.class Lcom/xingluo/platform/gameplus/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/gameplus/net/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/h;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/i;->a:Lcom/xingluo/platform/gameplus/a/h;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/a/i;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 3

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IGetDownloadList-->faild"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/net/a/a;)V
    .locals 5

    const-string v0, "tim"

    const-string v1, "IGetDownloadList-->success"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/xingluo/platform/gameplus/net/response/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/net/response/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/net/response/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/i;->a:Lcom/xingluo/platform/gameplus/a/h;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/h;->a(Lcom/xingluo/platform/gameplus/a/h;)Lcom/xingluo/platform/gameplus/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/net/response/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/download/f;->a(Ljava/util/List;)Ljava/util/List;

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

    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/i;->a:Lcom/xingluo/platform/gameplus/a/h;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/h;->a(Lcom/xingluo/platform/gameplus/a/h;)Lcom/xingluo/platform/gameplus/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/xingluo/platform/gameplus/a/i;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
