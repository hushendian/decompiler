.class public Lcom/xingluo/platform/tsz/afinal/http/c;
.super Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

# interfaces
.implements Lcom/xingluo/platform/tsz/afinal/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xingluo/platform/tsz/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/xingluo/platform/tsz/afinal/http/a/a;"
    }
.end annotation


# static fields
.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x4


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

.field private final d:Lcom/xingluo/platform/tsz/afinal/http/a/b;

.field private final e:Lcom/xingluo/platform/tsz/afinal/http/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private q:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lcom/xingluo/platform/tsz/afinal/http/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;-><init>()V

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/http/a/c;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/http/a/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/http/a/b;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/http/a/b;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->d:Lcom/xingluo/platform/tsz/afinal/http/a/b;

    iput v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->k:Z

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    iput-object p4, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "response status error code:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->k:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " \n maybe you have download complete."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v7

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    aput-object v0, v2, v6

    invoke-virtual {p0, v2}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->q:J

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->d:Lcom/xingluo/platform/tsz/afinal/http/a/b;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->k:Z

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a(Lorg/apache/http/HttpEntity;Lcom/xingluo/platform/tsz/afinal/http/a/a;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v0, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/xingluo/platform/tsz/afinal/http/a/c;->a(Lorg/apache/http/HttpEntity;Lcom/xingluo/platform/tsz/afinal/http/a/a;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    const-string v3, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v3

    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/http/c;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/http/c;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "unknownHostException\uff1acan\'t resolve host"

    aput-object v0, v1, v7

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v1, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v1, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->f:I

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v1, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u672a\u77e5\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-wide v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public a(JJZ)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/http/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_1

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->q:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    invoke-virtual {v4}, Lcom/xingluo/platform/tsz/afinal/http/a;->c()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->q:J

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v5, :cond_0

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->j:Ljava/lang/String;

    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->k:Z

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/tsz/afinal/http/c;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs c([Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;->c([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/http/a;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/tsz/afinal/http/a;->a(JJ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Throwable;

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x3

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/xingluo/platform/tsz/afinal/http/a;->a(Ljava/lang/Throwable;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->e:Lcom/xingluo/platform/tsz/afinal/http/a;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/http/a;->a(Ljava/lang/Object;)V

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

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->d:Lcom/xingluo/platform/tsz/afinal/http/a/b;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/c;->d:Lcom/xingluo/platform/tsz/afinal/http/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/http/a/b;->a(Z)V

    return-void
.end method
