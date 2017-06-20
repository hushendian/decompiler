.class public final Lcom/tendcloud/tenddata/TalkingDataGA;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG:Ljava/lang/String; = "TDGA"

.field public static final PLATFORM_TYPE_AIR:I = 0x3

.field public static final PLATFORM_TYPE_COCOS2DX:I = 0x1

.field public static final PLATFORM_TYPE_NATIVE:I = 0x0

.field public static final PLATFORM_TYPE_PHONEGAP:I = 0x4

.field public static final PLATFORM_TYPE_UNITY:I = 0x2

.field public static TDPushDisabled:Z

.field protected static final a:Ljava/util/Map;

.field public static gameAppId:Ljava/lang/String;

.field public static isIniting:Z

.field public static sAppId:Ljava/lang/String;

.field public static sMainBackgroundThread:Landroid/os/HandlerThread;

.field public static sPlatformType:I

.field public static sPushMessage:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPlatformType:I

    .line 37
    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->TDPushDisabled:Z

    .line 40
    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->isIniting:Z

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Controller Message Processing Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sMainBackgroundThread:Landroid/os/HandlerThread;

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Controller sPushMessage Processing Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPushMessage:Landroid/os/HandlerThread;

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Ljava/util/Map;

    .line 53
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sMainBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPushMessage:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 93
    return-void
.end method

.method public static callNullMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const-string v0, "TDGA"

    const-string v1, "null method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 124
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGameAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->gameAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "td_pefercen_profile"

    const-string v1, "gameappkey"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->gameAppId:Ljava/lang/String;

    .line 73
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->gameAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static final getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    const-class v1, Lcom/tendcloud/tenddata/TalkingDataGA;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final onKill()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ac;->onKill(Lcom/tendcloud/tenddata/game/a;)V

    .line 114
    return-void
.end method

.method public static final onPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 103
    return-void
.end method

.method public static final onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 88
    return-void
.end method

.method public static setVerboseLogDisabled()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ac;->setVerboseLogDisable(Lcom/tendcloud/tenddata/game/a;)V

    .line 59
    return-void
.end method
