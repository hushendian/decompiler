.class Lcom/xingluo/platform/gameplus/download/e;
.super Lcom/xingluo/platform/tsz/afinal/http/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xingluo/platform/tsz/afinal/http/a",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/download/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/download/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/http/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0, p3, p4}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(J)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b(J)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->downloadProgress-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v4, v4, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v4}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c()J

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

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->Numbers of Listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/AidlListener;->a()Lcom/xingluo/platform/gameplus/service/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-interface {v0, v1}, Lcom/xingluo/platform/gameplus/service/d;->b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v3, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/gameplus/download/d;->b(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download finished!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v2, v2, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/download/d;->a(Lcom/xingluo/platform/gameplus/download/d;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/mode/AidlListener;->a()Lcom/xingluo/platform/gameplus/service/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-interface {v0, v1}, Lcom/xingluo/platform/gameplus/service/d;->c(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v3, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/gameplus/download/d;->b(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "APK Invalid!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    const-string v2, "APK Invalid!"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xingluo/platform/gameplus/download/e;->a(Ljava/lang/Throwable;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/download/e;->a(Ljava/io/File;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x1a0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/download/e;->a(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";errorNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/download/d;->a(Lcom/xingluo/platform/gameplus/download/d;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v1, v1, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/e;->a:Lcom/xingluo/platform/gameplus/download/d;

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/download/d;->b(Lcom/xingluo/platform/gameplus/download/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
