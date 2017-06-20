.class public Lcom/tendcloud/tenddata/game/ck;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/an;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
