.class public final Lcom/tendcloud/tenddata/TDGAItem;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPurchase(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string v0, "TDGAItem.onPurchase()#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAItem.onPurchase()# item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priceInVirtualCurrency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method

.method public static onUse(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "TDGAItem.onUse()#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAItem.onUse()# item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method
