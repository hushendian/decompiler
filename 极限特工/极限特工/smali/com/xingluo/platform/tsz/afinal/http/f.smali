.class public Lcom/xingluo/platform/tsz/afinal/http/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/http/a/c;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/http/a/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->c:Lcom/xingluo/platform/tsz/afinal/http/a/c;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/xingluo/platform/tsz/afinal/http/a/c;->a(Lorg/apache/http/HttpEntity;Lcom/xingluo/platform/tsz/afinal/http/a/a;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NPE in HttpClient"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->d:I

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/http/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u672a\u77e5\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs a([Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/http/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
