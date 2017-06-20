.class public final Lcom/tendcloud/tenddata/game/bw;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bw;->a:Landroid/os/Bundle;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bw;->b:Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/bw;->c:I

    return-void
.end method
