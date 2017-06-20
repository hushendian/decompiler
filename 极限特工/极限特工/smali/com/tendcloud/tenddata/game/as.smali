.class public final Lcom/tendcloud/tenddata/game/as;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/as$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/as;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ljava/lang/ThreadLocal;

.field private final d:Ljava/lang/ThreadLocal;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/as;->a:Lcom/tendcloud/tenddata/game/as;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/as;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    new-instance v0, Lcom/tendcloud/tenddata/game/at;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/at;-><init>(Lcom/tendcloud/tenddata/game/as;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Lcom/tendcloud/tenddata/game/au;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/au;-><init>(Lcom/tendcloud/tenddata/game/as;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/as;->e:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/as;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/tendcloud/tenddata/game/as;->a:Lcom/tendcloud/tenddata/game/as;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/tendcloud/tenddata/game/as;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/as;->a:Lcom/tendcloud/tenddata/game/as;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tendcloud/tenddata/game/as;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/as;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/as;->a:Lcom/tendcloud/tenddata/game/as;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/as;->a:Lcom/tendcloud/tenddata/game/as;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 288
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 289
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 291
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 295
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 305
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 302
    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V
    .locals 2

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/tendcloud/tenddata/game/as$a;

    invoke-direct {v1, p1, p2}, Lcom/tendcloud/tenddata/game/as$a;-><init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 274
    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/as;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/as;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 222
    :goto_0
    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/as$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/as$a;->b:Lcom/tendcloud/tenddata/game/aw;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/aw;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/as$a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/as$a;->b:Lcom/tendcloud/tenddata/game/aw;

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/as;->d:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method protected b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V
    .locals 1

    .prologue
    .line 239
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/game/aw;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 164
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    const/4 v1, 0x1

    .line 168
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/aw;

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V

    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v0

    .line 172
    goto :goto_1

    .line 174
    :cond_2
    if-nez v1, :cond_3

    instance-of v0, p1, Lcom/tendcloud/tenddata/game/ax;

    if-nez v0, :cond_3

    .line 175
    new-instance v0, Lcom/tendcloud/tenddata/game/ax;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ax;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/as;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/av;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 78
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 79
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/as;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 80
    if-nez v1, :cond_3

    .line 82
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/as;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 84
    if-nez v1, :cond_3

    move-object v1, v2

    .line 88
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 89
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/av;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 118
    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/aw;

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/aw;->b()V

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
