.class Lcom/tendcloud/tenddata/game/bd$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/bc;

.field public b:Lcom/tendcloud/tenddata/game/bc;

.field public c:D

.field final synthetic d:Lcom/tendcloud/tenddata/game/bd;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/bd;Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;D)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bd$a;->d:Lcom/tendcloud/tenddata/game/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    .line 29
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    .line 30
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    .line 31
    return-void
.end method
