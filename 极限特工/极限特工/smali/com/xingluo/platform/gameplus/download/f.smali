.class public Lcom/xingluo/platform/gameplus/download/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)I
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3eb

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "GamePlus/downloads"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/e;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->r()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x7d1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->n()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    const/16 v0, 0x7d3

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;)Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;-><init>()V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/download/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/download/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/download/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/download/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->e(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b(I)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c(I)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->d(I)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->m(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->c(J)V

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->e(I)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0}, Lcom/xingluo/platform/gameplus/download/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/download/f;->a(Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;)Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startdownload----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/d;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/d;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lcom/xingluo/platform/gameplus/download/g;

    invoke-direct {v2}, Lcom/xingluo/platform/gameplus/download/g;-><init>()V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->b()Lcom/xingluo/platform/tsz/afinal/core/AsyncTask$Status;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
