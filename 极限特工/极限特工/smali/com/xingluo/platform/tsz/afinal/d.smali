.class public Lcom/xingluo/platform/tsz/afinal/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/d$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x2000

.field private static final b:Ljava/lang/String; = "Accept-Encoding"

.field private static final c:Ljava/lang/String; = "gzip"

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static final l:Ljava/util/concurrent/ThreadFactory;

.field private static final m:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final i:Lorg/apache/http/protocol/HttpContext;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    sput v0, Lcom/xingluo/platform/tsz/afinal/d;->d:I

    const/16 v0, 0x2710

    sput v0, Lcom/xingluo/platform/tsz/afinal/d;->e:I

    const/4 v0, 0x5

    sput v0, Lcom/xingluo/platform/tsz/afinal/d;->f:I

    const/4 v0, 0x1

    sput v0, Lcom/xingluo/platform/tsz/afinal/d;->g:I

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/e;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/e;-><init>()V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/d;->l:Ljava/util/concurrent/ThreadFactory;

    sget v0, Lcom/xingluo/platform/tsz/afinal/d;->g:I

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/d;->l:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/d;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->j:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/xingluo/platform/tsz/afinal/d;->e:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v2, Lcom/xingluo/platform/tsz/afinal/d;->d:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/xingluo/platform/tsz/afinal/d;->e:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/xingluo/platform/tsz/afinal/d;->e:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/f;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/f;-><init>(Lcom/xingluo/platform/tsz/afinal/d;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/g;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/g;-><init>(Lcom/xingluo/platform/tsz/afinal/d;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/http/e;

    sget v2, Lcom/xingluo/platform/tsz/afinal/d;->f:I

    invoke-direct {v1, v2}, Lcom/xingluo/platform/tsz/afinal/http/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/tsz/afinal/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->k:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/http/b;->a()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-object p1
.end method

.method public static d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/http/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/xingluo/platform/tsz/afinal/http/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/xingluo/platform/tsz/afinal/http/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/d;->d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/http/c;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/d;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p5, v4}, Lcom/xingluo/platform/tsz/afinal/http/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lcom/xingluo/platform/tsz/afinal/http/a;Ljava/lang/String;)V

    sget-object v2, Lcom/xingluo/platform/tsz/afinal/d;->m:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p3, v3, v0

    const/4 v0, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/xingluo/platform/tsz/afinal/http/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/xingluo/platform/tsz/afinal/http/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/xingluo/platform/tsz/afinal/http/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/d;->d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lcom/xingluo/platform/tsz/afinal/d;->d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-eqz p4, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/http/f;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->j:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/xingluo/platform/tsz/afinal/http/f;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/http/f;->a([Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/d;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/d;->d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lcom/xingluo/platform/tsz/afinal/d;->d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v3, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lcom/xingluo/platform/tsz/afinal/http/b;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public a(Lorg/apache/http/client/CookieStore;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 3

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void
.end method

.method protected a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/impl/client/DefaultHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/http/c;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->j:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p5, v1}, Lcom/xingluo/platform/tsz/afinal/http/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lcom/xingluo/platform/tsz/afinal/http/a;Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/d;->m:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/http/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xingluo/platform/tsz/afinal/d;->b(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/http/e;

    invoke-direct {v1, p1}, Lcom/xingluo/platform/tsz/afinal/http/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xingluo/platform/tsz/afinal/d;->b(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->c(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/b;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lcom/xingluo/platform/tsz/afinal/http/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/xingluo/platform/tsz/afinal/d;->b(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/d;->b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/d;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/d;->i:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/a;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/d;->c(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/http/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;[Lorg/apache/http/Header;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
