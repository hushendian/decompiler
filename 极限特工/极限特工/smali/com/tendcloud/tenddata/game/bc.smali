.class public Lcom/tendcloud/tenddata/game/bc;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/tendcloud/tenddata/game/bc;->a:I

    return v0
.end method

.method public a(Z)Ljava/util/Map;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->d:Ljava/util/Map;

    .line 44
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ay;

    .line 45
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bc;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ay;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->d:Ljava/util/Map;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/bc;->b:J

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/tendcloud/tenddata/game/bc;
    .locals 4

    .prologue
    .line 54
    new-instance v1, Lcom/tendcloud/tenddata/game/bc;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bc;-><init>()V

    .line 55
    iget v0, p0, Lcom/tendcloud/tenddata/game/bc;->a:I

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bc;->setTimestamp(I)V

    .line 56
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/bc;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/tendcloud/tenddata/game/bc;->setPoiId(J)V

    .line 57
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ay;

    .line 59
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ay;->f()Lcom/tendcloud/tenddata/game/ay;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/bc;->setBsslist(Ljava/util/List;)V

    .line 62
    return-object v1
.end method

.method public setBsslist(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bc;->c:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setPoiId(J)V
    .locals 0

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/bc;->b:J

    .line 31
    return-void
.end method

.method public setTimestamp(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tendcloud/tenddata/game/bc;->a:I

    .line 23
    return-void
.end method
