.class public Lcom/tendcloud/tenddata/game/cm;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "TalkingData"

.field public static final c:Ljava/lang/String; = "SaaS"

.field public static final d:Ljava/lang/String; = "Android"

.field public static e:Ljava/lang/String; = null

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/game/cm;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 34
    const-string v0, "version"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v0, "minorVersion"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v0, "build"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v0, "partner"

    const-string v1, "SaaS"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v0, "platform"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v0, "type"

    const-string v1, "TalkingData"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v0, "framework"

    sget-object v1, Lcom/tendcloud/tenddata/game/cm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cm;->b:Lorg/json/JSONObject;

    const-string v2, "features"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v0

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "version"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "minorVersion"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_1
    const-string v0, "features"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cm;->b:Lorg/json/JSONObject;

    const-string v2, "features"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tendcloud/tenddata/game/cm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setFrameWork(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    sput-object p1, Lcom/tendcloud/tenddata/game/cm;->e:Ljava/lang/String;

    .line 45
    return-void
.end method
