.class public final Lcom/tendcloud/tenddata/game/ac;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static a:Z

.field private static b:Lcom/tendcloud/tenddata/game/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ac;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 276
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 277
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 139
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 124
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 33
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit v1

    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 49
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 232
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 233
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    .locals 8

    .prologue
    .line 224
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 225
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 208
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 209
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    .locals 6

    .prologue
    .line 250
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 251
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 258
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 259
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    .locals 12

    .prologue
    .line 267
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 268
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    .locals 8

    .prologue
    .line 240
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 241
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->v:Z

    return v0
.end method

.method public static final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/ao;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 153
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 154
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 216
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 217
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 90
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    :goto_0
    monitor-exit v1

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 180
    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 183
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 184
    const-string v0, "Init failed Context is null "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 187
    :cond_2
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Lcom/tendcloud/tenddata/game/zz;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onKill(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 167
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 168
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0}, Lcom/tendcloud/tenddata/game/ao;->onKill(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setVerboseLogDisable(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .prologue
    .line 106
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 107
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->b:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/ao;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
