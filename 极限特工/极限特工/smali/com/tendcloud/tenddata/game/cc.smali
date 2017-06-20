.class public Lcom/tendcloud/tenddata/game/cc;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Ljava/util/HashMap;

.field static b:Ljava/util/HashMap;

.field static c:Ljava/lang/String;

.field static d:[B

.field private static volatile e:Lcom/tendcloud/tenddata/game/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->a:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->b:Ljava/util/HashMap;

    .line 25
    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->c:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->e:Lcom/tendcloud/tenddata/game/cc;

    .line 144
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cc;->b()Lcom/tendcloud/tenddata/game/cc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->d:[B

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-class v0, Lcom/tendcloud/tenddata/game/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->d:[B

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public static b()Lcom/tendcloud/tenddata/game/cc;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/tendcloud/tenddata/game/cc;->e:Lcom/tendcloud/tenddata/game/cc;

    if-nez v0, :cond_1

    .line 124
    const-class v1, Lcom/tendcloud/tenddata/game/cc;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cc;->e:Lcom/tendcloud/tenddata/game/cc;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/tendcloud/tenddata/game/cc;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cc;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->e:Lcom/tendcloud/tenddata/game/cc;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cc;->e:Lcom/tendcloud/tenddata/game/cc;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/List;
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, p1, v2}, Lcom/tendcloud/tenddata/game/ce;->a(Lcom/tendcloud/tenddata/game/a;I)Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    sget-object v3, Lcom/tendcloud/tenddata/game/cc;->d:[B

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/ap;->c([B[B)[B

    move-result-object v0

    .line 95
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    .line 105
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final onTDEBEventDataStore(Lcom/tendcloud/tenddata/game/bx;)V
    .locals 4

    .prologue
    .line 30
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_SQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :cond_2
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Lcom/tendcloud/tenddata/game/ci;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/ci;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ci;->setData(Ljava/util/Map;)V

    .line 45
    invoke-static {}, Lcom/tendcloud/tenddata/game/cx;->a()Lcom/tendcloud/tenddata/game/cx;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cx;->a(Lcom/tendcloud/tenddata/game/ci;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/cc;->d:[B

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ap;->b([B[B)[B

    move-result-object v0

    .line 53
    new-instance v1, Lcom/tendcloud/tenddata/game/cd;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/cd;-><init>([B)V

    .line 54
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/ce;->a(Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/bx;)V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Lcom/tendcloud/tenddata/game/ci;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/ci;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ci;->setData(Ljava/util/Map;)V

    .line 62
    invoke-static {}, Lcom/tendcloud/tenddata/game/cx;->a()Lcom/tendcloud/tenddata/game/cx;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cx;->a(Lcom/tendcloud/tenddata/game/ci;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/cc;->d:[B

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ap;->b([B[B)[B

    move-result-object v0

    .line 70
    new-instance v1, Lcom/tendcloud/tenddata/game/cd;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/cd;-><init>([B)V

    .line 71
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/ce;->a(Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/bx;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 81
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ce;->confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method
