.class Lcom/tendcloud/tenddata/game/am;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/ak;

.field private b:I


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ak;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->b:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    .line 87
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 89
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ak;->c(Lcom/tendcloud/tenddata/game/ak;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    if-eq v2, v8, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v2, v0, v1}, Lcom/tendcloud/tenddata/game/ak;->a(Lcom/tendcloud/tenddata/game/ak;J)J

    .line 94
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 95
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    aget v1, v0, v1

    .line 96
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_2

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 97
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    .line 98
    :cond_2
    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->b:I

    .line 101
    :cond_3
    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->d(Lcom/tendcloud/tenddata/game/ak;)Lcom/tendcloud/tenddata/game/ak$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->e(Lcom/tendcloud/tenddata/game/ak;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->e(Lcom/tendcloud/tenddata/game/ak;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 107
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->d(Lcom/tendcloud/tenddata/game/ak;)Lcom/tendcloud/tenddata/game/ak$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/ak$a;->a()V

    .line 110
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->a(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->a(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/am;->a:Lcom/tendcloud/tenddata/game/ak;

    .line 112
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ak;->b(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 115
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
