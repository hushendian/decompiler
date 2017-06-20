.class public Lcom/xingluo/platform/single/net/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/net/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xingluo/platform/single/util/i;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xingluo/platform/single/net/a;",
            "Lcom/xingluo/platform/single/net/INetListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;

.field private d:Lcom/xingluo/platform/single/json/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/net/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/net/e;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/xingluo/platform/single/net/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/single/net/e$a;-><init>(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/e$a;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/net/e;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/net/e;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->a:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/net/e;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/xingluo/platform/single/net/a;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/xingluo/platform/single/net/a;Lcom/xingluo/platform/single/net/INetListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/xingluo/platform/single/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/a;)V

    return-void
.end method

.method private b(I)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/xingluo/platform/single/net/a;",
            "Lcom/xingluo/platform/single/net/INetListener;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/single/net/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    .locals 6

    invoke-virtual {p1}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->getRequestTag()I

    move-result v2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->buildJson()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/platform/single/net/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/net/a;

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e;->c:Landroid/os/Handler;

    invoke-direct {v0, p5, v1}, Lcom/xingluo/platform/single/net/a;-><init>(Lcom/xingluo/platform/single/json/AbstractJSONHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/net/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/a/a;->a()Lcom/xingluo/platform/single/a/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/xingluo/platform/single/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/single/net/a;->a(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a;->b(I)V

    invoke-direct {p0, v0, p4}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/a;Lcom/xingluo/platform/single/net/INetListener;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/util/LinkedList;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/xingluo/platform/single/net/INetListener;",
            "Lcom/xingluo/platform/single/json/AbstractJSONHelper;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/net/a;

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e;->c:Landroid/os/Handler;

    invoke-direct {v0, p5, v1}, Lcom/xingluo/platform/single/net/a;-><init>(Lcom/xingluo/platform/single/json/AbstractJSONHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/net/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " sendSMSRequest end content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/single/net/a;->a(Ljava/util/LinkedList;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/single/net/a;->a(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a;->b(I)V

    invoke-direct {p0, v0, p4}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/a;Lcom/xingluo/platform/single/net/INetListener;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    .locals 2

    new-instance v0, Lcom/xingluo/platform/single/net/a;

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e;->c:Landroid/os/Handler;

    invoke-direct {v0, p4, v1}, Lcom/xingluo/platform/single/net/a;-><init>(Lcom/xingluo/platform/single/json/AbstractJSONHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/net/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/single/net/a;->d(Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a;->b(I)V

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/a;Lcom/xingluo/platform/single/net/INetListener;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a;->g()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a;->g()V

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
