.class public Lcom/xingluo/platform/gameplus/download/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xingluo/platform/gameplus/download/i;

    const-string v1, "DownloadThread"

    invoke-direct {v0, v1, p0, p1}, Lcom/xingluo/platform/gameplus/download/i;-><init>(Ljava/lang/String;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/download/i;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xingluo/platform/gameplus/download/h;->c(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V

    return-void
.end method

.method private static c(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/xingluo/platform/gameplus/download/h;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/xingluo/platform/gameplus/download/f;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move v1, v4

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/download/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/download/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xingluo/platform/gameplus/download/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/xingluo/platform/gameplus/download/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/download/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/download/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xingluo/platform/gameplus/download/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v2, v5, v7, v8}, Lcom/xingluo/platform/gameplus/download/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/xingluo/platform/gameplus/download/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v5, v4, v0, v1}, Lcom/xingluo/platform/gameplus/download/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x3ec

    move v1, v0

    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v5, v3, v0, v1}, Lcom/xingluo/platform/gameplus/download/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    move v2, v1

    move v1, v0

    goto :goto_1
.end method
