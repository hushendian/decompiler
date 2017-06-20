.class public Lcom/tendcloud/tenddata/game/cg;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# static fields
.field static a:Lcom/tendcloud/tenddata/game/cg;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized a()Lcom/tendcloud/tenddata/game/cg;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/tendcloud/tenddata/game/cg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cg;->a:Lcom/tendcloud/tenddata/game/cg;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cg;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cg;->a:Lcom/tendcloud/tenddata/game/cg;

    .line 23
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cg;->a:Lcom/tendcloud/tenddata/game/cg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setAccount(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "account"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public setAntiCheatingstatus(I)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "antiCheating"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public setCurrentPageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, "page"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "deeplink"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->setDeepLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPageStartTime(J)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "pageStartTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setPushInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const-string v0, "push"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const-string v0, "sessionId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public setSessionStartTime(J)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "sessionStartTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setSubaccount(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "subaccount"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
