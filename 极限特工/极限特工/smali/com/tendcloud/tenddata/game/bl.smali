.class public final Lcom/tendcloud/tenddata/game/bl;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Landroid/os/Handler; = null

.field static b:Landroid/os/HandlerThread; = null

.field private static final c:Ljava/lang/String; = "check_wifi_permission"

.field private static final d:Ljava/lang/String; = "check_bs_permission"

.field private static final e:Ljava/lang/String; = "check_gps_permission"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:J = 0x927c0L

.field private static volatile k:Lcom/tendcloud/tenddata/game/bl;

.field private static l:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->k:Lcom/tendcloud/tenddata/game/bl;

    .line 57
    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->a:Landroid/os/Handler;

    .line 58
    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->b:Landroid/os/HandlerThread;

    .line 76
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bl;->a()Lcom/tendcloud/tenddata/game/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "locHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->b:Landroid/os/HandlerThread;

    .line 85
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/tendcloud/tenddata/game/bm;

    sget-object v1, Lcom/tendcloud/tenddata/game/bl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/bm;-><init>(Lcom/tendcloud/tenddata/game/bl;Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->a:Landroid/os/Handler;

    .line 109
    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bl;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->k:Lcom/tendcloud/tenddata/game/bl;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/tendcloud/tenddata/game/bl;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->k:Lcom/tendcloud/tenddata/game/bl;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/tendcloud/tenddata/game/bl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bl;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->k:Lcom/tendcloud/tenddata/game/bl;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->k:Lcom/tendcloud/tenddata/game/bl;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bl;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bl;->d()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    const-string v0, "check_wifi_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const/4 v0, 0x1

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/tendcloud/tenddata/game/bl;->l:Landroid/net/wifi/WifiManager;

    .line 198
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lcom/tendcloud/tenddata/game/bq;

    sget-object v1, Lcom/tendcloud/tenddata/game/bl;->l:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bq;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 200
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/bl;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bl;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x927c0

    const/4 v1, 0x2

    .line 211
    const-string v0, "check_gps_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 218
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 219
    const-string v1, "locationUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 220
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 221
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 223
    const/4 v0, 0x2

    const-wide/32 v1, 0x927c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/bl;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bl;->b()V

    return-void
.end method

.method private d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 232
    :try_start_0
    const-string v0, "check_bs_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    const/4 v0, 0x3

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 239
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 242
    new-instance v1, Lcom/tendcloud/tenddata/game/bp;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bp;-><init>()V

    .line 243
    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a(IJ)V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 120
    iput p1, v0, Landroid/os/Message;->what:I

    .line 121
    sget-object v1, Lcom/tendcloud/tenddata/game/bl;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 145
    .line 149
    invoke-static {v6}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_d

    move v3, v2

    .line 156
    :goto_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-nez v0, :cond_b

    :cond_0
    move v0, v2

    .line 174
    :goto_1
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    .line 178
    :goto_2
    const-string v5, "check_bs_permission"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 188
    :cond_1
    :goto_3
    return v2

    .line 162
    :catch_0
    move-exception v0

    move v0, v1

    :goto_4
    move v3, v0

    move v0, v1

    .line 163
    goto :goto_1

    .line 166
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_c

    move v3, v2

    .line 168
    :goto_5
    :try_start_3
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 169
    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    move v0, v2

    .line 170
    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    move v0, v1

    :goto_6
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const-string v3, "check_gps_permission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v0

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    const-string v3, "check_wifi_permission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 183
    invoke-static {v6}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 184
    if-eqz v4, :cond_7

    if-nez v0, :cond_1

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v4

    .line 186
    goto :goto_3

    :cond_9
    move v2, v1

    .line 188
    goto :goto_3

    .line 171
    :catch_2
    move-exception v0

    move v0, v3

    goto :goto_6

    .line 162
    :catch_3
    move-exception v0

    move v0, v3

    goto :goto_4

    :cond_a
    move v4, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    move v3, v1

    goto :goto_5

    :cond_d
    move v3, v1

    goto/16 :goto_0
.end method

.method public final onTDEBEventLocationEvent(Lcom/tendcloud/tenddata/game/bs;)V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/bs;->m:Ljava/util/Map;

    const-string v1, "eventType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 134
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 135
    const-string v1, "lwcUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 136
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 137
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method
