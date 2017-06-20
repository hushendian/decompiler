.class public Lcom/tendcloud/tenddata/game/cr;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 18
    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    const-string v0, "osVersionName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string v0, "osVersionCode"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v0, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v0, "timezoneV"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    const-string v0, "language"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v0, "romVersion"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "basebandVersion"

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cr;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 35
    const-string v1, "timezoneV"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cr;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 40
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
