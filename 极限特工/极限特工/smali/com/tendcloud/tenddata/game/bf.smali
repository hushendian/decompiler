.class public Lcom/tendcloud/tenddata/game/bf;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bf$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/bf;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static p:Lorg/json/JSONObject;


# instance fields
.field private i:Ljava/lang/String;

.field private k:Lcom/tendcloud/tenddata/game/bf$a;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->a:Lcom/tendcloud/tenddata/game/bf;

    .line 350
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->a()Lcom/tendcloud/tenddata/game/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    const-string v0, "account"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->b:Ljava/lang/String;

    .line 362
    const-string v0, "accountId"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->c:Ljava/lang/String;

    .line 363
    const-string v0, "name"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->d:Ljava/lang/String;

    .line 364
    const-string v0, "gender"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->e:Ljava/lang/String;

    .line 365
    const-string v0, "age"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->f:Ljava/lang/String;

    .line 366
    const-string v0, "type"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->g:Ljava/lang/String;

    .line 367
    const-string v0, "accountCus"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->h:Ljava/lang/String;

    .line 370
    const-string v0, "default"

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->j:Ljava/lang/String;

    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    sget-object v0, Lcom/tendcloud/tenddata/game/bf$a;->c:Lcom/tendcloud/tenddata/game/bf$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->k:Lcom/tendcloud/tenddata/game/bf$a;

    .line 346
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bf;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->a:Lcom/tendcloud/tenddata/game/bf;

    if-nez v0, :cond_1

    .line 336
    const-class v1, Lcom/tendcloud/tenddata/game/bf;

    monitor-enter v1

    .line 337
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->a:Lcom/tendcloud/tenddata/game/bf;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/tendcloud/tenddata/game/bf;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bf;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->a:Lcom/tendcloud/tenddata/game/bf;

    .line 340
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->a:Lcom/tendcloud/tenddata/game/bf;

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/r;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cg;->setSessionId(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 69
    const-string v1, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 75
    const-string v2, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const-string v2, "mission"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    const-string v2, "custom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cg;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bf;->i:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    .line 109
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    .line 113
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bf$a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/bf$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->k:Lcom/tendcloud/tenddata/game/bf$a;

    .line 116
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/bf;->m:I

    .line 119
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    .line 122
    :cond_3
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :cond_4
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->d()Ljava/util/Map;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 92
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "domain"

    sget-object v4, Lcom/tendcloud/tenddata/game/bf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cg;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->setLastRoleName(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->j:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 284
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bf;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->f:Ljava/lang/String;

    iget v2, p0, Lcom/tendcloud/tenddata/game/bf;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bf;->k:Lcom/tendcloud/tenddata/game/bf$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/bf$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 294
    const-string v1, "custom"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_2
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e()Ljava/util/Map;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 305
    :try_start_0
    const-string v1, "name"

    sget-object v2, Lcom/tendcloud/tenddata/game/bf;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 307
    const-string v1, "custom"

    sget-object v2, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static f()V
    .locals 5

    .prologue
    .line 317
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->e()Ljava/util/Map;

    move-result-object v0

    .line 319
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cg;->setSubaccount(Lorg/json/JSONObject;)V

    .line 321
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 322
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "domain"

    sget-object v4, Lcom/tendcloud/tenddata/game/bf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "roleUpdate"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized setRoleName(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 189
    const-class v1, Lcom/tendcloud/tenddata/game/bf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/r;->setLastRoleName(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    .line 192
    sput-object p0, Lcom/tendcloud/tenddata/game/bf;->j:Ljava/lang/String;

    .line 193
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/r;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 196
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    .line 197
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->f()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :goto_0
    monitor-exit v1

    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    .line 203
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->c()V

    .line 204
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->e()Ljava/util/Map;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/cg;->setSubaccount(Lorg/json/JSONObject;)V

    .line 208
    new-instance v2, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 209
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "apiType"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "domain"

    sget-object v5, Lcom/tendcloud/tenddata/game/bf;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "action"

    const-string v5, "roleCreate"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x66

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->c()V

    .line 243
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->c()V

    .line 229
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onTDEBEventAccount(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 6

    .prologue
    .line 25
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/a;

    .line 32
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    if-eqz v2, :cond_2

    instance-of v4, v2, Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v4, :cond_2

    .line 35
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "missionId"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 36
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "missionId"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    check-cast v2, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {p0, v2, v4, v1}, Lcom/tendcloud/tenddata/game/bf;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 43
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v4, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v4}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 45
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "domain"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 46
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "action"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 47
    if-eqz v3, :cond_3

    instance-of v2, v3, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 48
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    iput-object v2, v4, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 50
    :cond_3
    iput-object v1, v4, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 51
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 39
    :cond_4
    check-cast v2, Lcom/tendcloud/tenddata/TDGAAccount;

    const-string v4, ""

    invoke-direct {p0, v2, v4, v1}, Lcom/tendcloud/tenddata/game/bf;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bf;->n:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAge(I)V
    .locals 1

    .prologue
    .line 163
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/bf;->m:I

    if-eq v0, p1, :cond_0

    .line 164
    iput p1, p0, Lcom/tendcloud/tenddata/game/bf;->m:I

    .line 165
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGender(Lcom/tendcloud/tenddata/game/bf$a;)V
    .locals 1

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->k:Lcom/tendcloud/tenddata/game/bf$a;

    if-eq v0, p1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bf;->k:Lcom/tendcloud/tenddata/game/bf$a;

    .line 153
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bf;->l:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bf;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
