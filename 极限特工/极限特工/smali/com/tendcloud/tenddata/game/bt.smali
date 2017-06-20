.class public Lcom/tendcloud/tenddata/game/bt;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/tendcloud/tenddata/game/bt;->a:I

    .line 25
    iput v0, p0, Lcom/tendcloud/tenddata/game/bt;->b:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/bt;->c:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/bt;->d:I

    return-void
.end method
