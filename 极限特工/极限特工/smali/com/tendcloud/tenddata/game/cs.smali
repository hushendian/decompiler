.class public Lcom/tendcloud/tenddata/game/cs;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:I

    .line 17
    const-string v0, "bootTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    const-string v0, "activeTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    const-string v0, "freeDiskSpace"

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cs;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string v0, "batteryLevel"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v0, "batteryState"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method private b()I
    .locals 2

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->n()[I

    move-result-object v0

    .line 29
    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method
