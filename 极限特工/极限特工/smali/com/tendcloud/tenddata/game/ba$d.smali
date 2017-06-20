.class Lcom/tendcloud/tenddata/game/ba$d;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/tendcloud/tenddata/game/ba$c;

.field b:Lcom/tendcloud/tenddata/game/ba$c;

.field c:D

.field final synthetic d:Lcom/tendcloud/tenddata/game/ba;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ba;Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;D)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba$d;->d:Lcom/tendcloud/tenddata/game/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    .line 30
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    .line 31
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/ba$d;->c:D

    .line 32
    return-void
.end method
