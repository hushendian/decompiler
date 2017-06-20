.class public Lcom/xingluo/platform/tsz/afinal/http/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;Lcom/xingluo/platform/tsz/afinal/http/a/a;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_2
    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    if-eqz v0, :cond_3

    move-object v0, v7

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v0, p3, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v6, v0

    move-wide v3, v1

    :goto_1
    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    if-eqz v0, :cond_5

    move-object v0, v7

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    move-wide v3, v1

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    add-long v1, v0, v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    if-eqz v0, :cond_7

    :cond_6
    move-object v0, v7

    goto :goto_0

    :cond_7
    const/16 v0, 0x400

    new-array v9, v0, [B

    :goto_2
    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    if-nez v0, :cond_8

    cmp-long v0, v3, v1

    if-gez v0, :cond_8

    const/4 v0, 0x0

    const/16 v5, 0x400

    invoke-virtual {v8, v9, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    const/4 v5, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/http/a/a;->a(JJZ)V

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    if-eqz v0, :cond_a

    cmp-long v0, v3, v1

    if-gez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "user stop download thread"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v6, v9, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v0

    add-long/2addr v3, v10

    const/4 v5, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/http/a/a;->a(JJZ)V

    goto :goto_2

    :cond_a
    move-object v0, v7

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a:Z

    return v0
.end method
