.class public final Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;,
        Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .locals 12

    .prologue
    .line 22
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    const-string v2, "TDGAVirtualCurrency.onChargeRequest()#SDK not initialized. "

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAVirtualCurrency.onChargeRequest()#orderid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iapid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currencyAmount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currencyType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " virtualCurrencyAmount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paymentType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sget-object v10, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->a:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v11, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v11}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    .line 33
    new-instance v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;

    sget-object v11, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->a:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;)V

    .line 35
    const-class v3, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v3

    .line 36
    :try_start_0
    sget-object v4, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static onChargeSuccess(Ljava/lang/String;)V
    .locals 11

    .prologue
    const-wide/16 v3, 0x0

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "TDGAVirtualCurrency.onChargeSuccess()#SDK not initialized. "

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAVirtualCurrency.onChargeSuccess()#orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 49
    const-class v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v2

    .line 50
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;

    move-object v8, v0

    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-nez v8, :cond_1

    .line 54
    const-string v2, ""

    const-string v5, ""

    const-string v8, ""

    sget-object v9, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->b:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v10, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    move-object v1, p0

    move-wide v6, v3

    invoke-static/range {v1 .. v10}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 56
    :cond_1
    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a()D

    move-result-wide v3

    .line 57
    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b()D

    move-result-wide v6

    .line 59
    invoke-virtual {v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->b:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v10, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    .line 56
    invoke-static/range {v1 .. v10}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method

.method public static onReward(DLjava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "TDGAVirtualCurrency.onReward()#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAVirtualCurrency.onReward()#currencyAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method
