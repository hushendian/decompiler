.class Lcom/tendcloud/tenddata/game/br;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bq;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bq;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/bq;->g:J

    .line 325
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/game/bq;->g:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/game/bq;->h:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->a(Lcom/tendcloud/tenddata/game/bq;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-wide v1, v1, Lcom/tendcloud/tenddata/game/bq;->g:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/bq;->h:J

    .line 327
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Lcom/tendcloud/tenddata/game/bq;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    .line 328
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->c(Lcom/tendcloud/tenddata/game/bq;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->c(Lcom/tendcloud/tenddata/game/bq;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bq;->e:Lcom/tendcloud/tenddata/game/bc;

    .line 332
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bq;->e:Lcom/tendcloud/tenddata/game/bc;

    if-nez v0, :cond_2

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bq;->a:Lcom/tendcloud/tenddata/game/bd;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/br;->a:Lcom/tendcloud/tenddata/game/bq;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/bq;->e:Lcom/tendcloud/tenddata/game/bc;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bd;->a(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 337
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 338
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 339
    const-string v1, "wifiUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 340
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 341
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method
