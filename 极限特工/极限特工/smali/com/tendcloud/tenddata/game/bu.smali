.class public Lcom/tendcloud/tenddata/game/bu;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bu$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/a;

.field public b:Lcom/tendcloud/tenddata/game/bu$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    .line 15
    sget-object v0, Lcom/tendcloud/tenddata/game/bu$a;->a:Lcom/tendcloud/tenddata/game/bu$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    return-void
.end method
