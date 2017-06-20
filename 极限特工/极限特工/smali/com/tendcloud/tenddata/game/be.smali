.class Lcom/tendcloud/tenddata/game/be;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bd;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bd;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/be;->a:Lcom/tendcloud/tenddata/game/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/bd$a;Lcom/tendcloud/tenddata/game/bd$a;)I
    .locals 4

    .prologue
    .line 303
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 301
    check-cast p1, Lcom/tendcloud/tenddata/game/bd$a;

    check-cast p2, Lcom/tendcloud/tenddata/game/bd$a;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/be;->a(Lcom/tendcloud/tenddata/game/bd$a;Lcom/tendcloud/tenddata/game/bd$a;)I

    move-result v0

    return v0
.end method
