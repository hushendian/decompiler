.class final Lcom/yuelan/codelib/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "------"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
