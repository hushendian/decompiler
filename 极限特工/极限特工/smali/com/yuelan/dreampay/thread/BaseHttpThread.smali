.class public Lcom/yuelan/dreampay/thread/BaseHttpThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static API_KEY:Ljava/lang/String; = null

.field public static final ParseFail:I = -0x2

.field public static final PostFail:I = -0x1

.field public static final PostSuccess:I = 0x1


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected maps:Ljava/util/Map;

.field protected msg:Landroid/os/Message;

.field protected url:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "6CA30ECAF37D9F929941481EEFAFAE6B"

    sput-object v0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    return-void
.end method

.method public static getFullUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getPostParams(Ljava/util/Map;)Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected doBaseHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    invoke-static {v0}, Lcom/yuelan/dreampay/thread/BaseHttpThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected doSafeBaseHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/yuelan/dreampay/thread/BaseHttpThread;->API_KEY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yuelan/codelib/utils/encryption/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/encryption/MD5Encoder;->EncoderByMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    const-string v3, "signkey"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    const-string v2, "reqTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->maps:Ljava/util/Map;

    invoke-static {v0}, Lcom/yuelan/dreampay/thread/BaseHttpThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->value:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/BaseHttpThread;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 0

    return-void
.end method
