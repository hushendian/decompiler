.class Lcom/xingluo/platform/gameplus/a/g;
.super Lcom/xingluo/platform/gameplus/service/d$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/g;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {p0}, Lcom/xingluo/platform/gameplus/service/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->b()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xingluo/platform/gameplus/b/a;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)J

    return-void
.end method

.method public b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 6

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->downloadProgress-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 4

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->b()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/g;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/a/g;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
