.class final Lcom/tendcloud/tenddata/game/bp;
.super Landroid/telephony/PhoneStateListener;
.source "td"


# static fields
.field static final a:J = 0x2bf20L


# instance fields
.field b:J

.field c:J

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 256
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 258
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->b:J

    .line 259
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->c:J

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/bp;->e:I

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->b:J

    .line 285
    iget v0, p0, Lcom/tendcloud/tenddata/game/bp;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/bp;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tendcloud/tenddata/game/bp;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->b:J

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/bp;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 286
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 287
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 288
    const-string v1, "cellUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 289
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 290
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 292
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->b:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bp;->c:J

    .line 293
    iget v0, p0, Lcom/tendcloud/tenddata/game/bp;->d:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/bp;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 267
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/bp;->d:I

    .line 269
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bp;->a()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 272
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/bp;->d:I

    .line 273
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bp;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method
