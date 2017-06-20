.class public Lcom/tendcloud/tenddata/game/ab;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ab$b;,
        Lcom/tendcloud/tenddata/game/ab$c;,
        Lcom/tendcloud/tenddata/game/ab$a;
    }
.end annotation


# static fields
.field static A:J = 0x0L

.field public static B:I = 0x0

.field public static final C:I = 0x1d4c0

.field public static D:J = 0x0L

.field public static final E:I = 0x64

.field public static final F:Ljava/lang/String; = "TD_APP_ID"

.field public static final G:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static final H:Ljava/lang/String; = "+V"

.field public static final a:Ljava/lang/String; = "TDGA"

.field public static final b:Z = false

.field public static c:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field public static final d:Ljava/util/Map;

.field public static e:Z = false

.field public static f:Landroid/content/Context; = null

.field public static g:Landroid/os/Handler; = null

.field public static final h:I = 0x1

.field public static final i:Ljava/lang/String; = "Android+"

.field public static j:Ljava/nio/channels/FileChannel; = null

.field public static k:J = 0x0L

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static final o:Ljava/lang/String; = "TD"

.field public static final p:Ljava/lang/String; = "TDLog"

.field public static q:Ljava/lang/String; = null

.field public static final r:Ljava/lang/String; = "TD_app_pefercen_profile"

.field public static final s:Ljava/lang/String; = "TD_appId_"

.field public static final t:Ljava/lang/String; = "TD_channelId"

.field public static final u:Ljava/lang/String; = "TD_sdk_last_send_time"

.field public static final v:Ljava/lang/String; = "isDeveloper"

.field public static w:Ljava/lang/String; = null

.field public static x:Z = false

.field public static y:Z = false

.field public static final z:Ljava/lang/String; = "Android+TD+V4.0.2 gp"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    .line 42
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->e:Z

    .line 44
    sput-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 45
    sput-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/os/Handler;

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tendcloud/tenddata/game/ab;->k:J

    .line 54
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->l:Z

    .line 57
    sput-boolean v3, Lcom/tendcloud/tenddata/game/ab;->m:Z

    .line 60
    sput-boolean v3, Lcom/tendcloud/tenddata/game/ab;->n:Z

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    .line 89
    const-string v0, "Default"

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    .line 91
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->x:Z

    .line 93
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->y:Z

    .line 137
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/ab;->B:I

    .line 150
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/tendcloud/tenddata/game/ab;->D:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const-string v0, "TD_app_pefercen_profile"

    const-string v1, "TD_channelId"

    const-string v2, "Default"

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    .line 122
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Context or Service is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 101
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "TD_app_pefercen_profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 2

    .prologue
    .line 278
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/cm;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cm;-><init>()V

    .line 279
    packed-switch p0, :pswitch_data_0

    .line 293
    const-string v1, "Native"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cm;->setFrameWork(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const-string v1, "Cocos2d"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cm;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 284
    :pswitch_1
    const-string v1, "Unity"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cm;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_2
    const-string v1, "AIR"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cm;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :pswitch_3
    const-string v1, "PhoneGap"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cm;->setFrameWork(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD_appId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/os/Handler;

    .line 168
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x0

    .line 171
    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    .line 179
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    sput-object p1, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    .line 182
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 183
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ab;->setChannelId(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/tendcloud/tenddata/game/cj;->b()Lcom/tendcloud/tenddata/game/cj;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 185
    sget v0, Lcom/tendcloud/tenddata/game/dz;->a:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ab;->a(I)V

    .line 186
    return-void

    .line 176
    :cond_2
    sput-object p0, Lcom/tendcloud/tenddata/game/ab;->q:Ljava/lang/String;

    goto :goto_1

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 268
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TD_app_pefercen_profile"

    const-string v3, "isDeveloper"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 270
    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    const-string v0, "Native"

    .line 308
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/cm;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cm;-><init>()V

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cm;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    const-string v2, "TD_channelId"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static setDeveloperMode(Z)V
    .locals 5

    .prologue
    .line 260
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v4, "isDeveloper"

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v0, v1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_1
    return-void

    .line 260
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    goto :goto_1
.end method
