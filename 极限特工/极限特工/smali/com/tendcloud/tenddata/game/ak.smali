.class public Lcom/tendcloud/tenddata/game/ak;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ak$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tendcloud/tenddata/game/ak; = null

.field private static final g:J = 0x2710L

.field private static final h:I = 0xa


# instance fields
.field private a:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private e:J

.field private final f:I

.field private i:Landroid/hardware/SensorManager;

.field private j:Lcom/tendcloud/tenddata/game/ak$a;

.field private k:Landroid/os/Handler;

.field private l:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/ak;->b:Lcom/tendcloud/tenddata/game/ak;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ak;->a:Landroid/content/Context;

    .line 18
    const/16 v0, 0xfa

    iput v0, p0, Lcom/tendcloud/tenddata/game/ak;->c:I

    .line 20
    const/16 v0, 0x12

    iput v0, p0, Lcom/tendcloud/tenddata/game/ak;->d:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/ak;->e:J

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/tendcloud/tenddata/game/ak;->f:I

    .line 28
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ak;->j:Lcom/tendcloud/tenddata/game/ak$a;

    .line 30
    new-instance v0, Lcom/tendcloud/tenddata/game/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/al;-><init>(Lcom/tendcloud/tenddata/game/ak;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->k:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/tendcloud/tenddata/game/am;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/am;-><init>(Lcom/tendcloud/tenddata/game/ak;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->l:Landroid/hardware/SensorEventListener;

    .line 58
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ak;->a:Landroid/content/Context;

    .line 60
    const-string v0, "sensor"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->i:Landroid/hardware/SensorManager;

    .line 63
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ak;->l:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ak;->i:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 70
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ak;J)J
    .locals 0

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/ak;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->i:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/ak;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/tendcloud/tenddata/game/ak;->b:Lcom/tendcloud/tenddata/game/ak;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/tendcloud/tenddata/game/ak;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ak;->b:Lcom/tendcloud/tenddata/game/ak;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/ak;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ak;->b:Lcom/tendcloud/tenddata/game/ak;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ak;->b:Lcom/tendcloud/tenddata/game/ak;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->l:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/ak;)J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/ak;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/game/ak;)Lcom/tendcloud/tenddata/game/ak$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->j:Lcom/tendcloud/tenddata/game/ak$a;

    return-object v0
.end method

.method static synthetic e(Lcom/tendcloud/tenddata/game/ak;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ak;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public registerTestDeviceListener(Lcom/tendcloud/tenddata/game/ak$a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ak;->j:Lcom/tendcloud/tenddata/game/ak$a;

    .line 78
    return-void
.end method
