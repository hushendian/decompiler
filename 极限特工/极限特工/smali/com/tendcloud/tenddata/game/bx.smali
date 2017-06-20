.class public Lcom/tendcloud/tenddata/game/bx;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 15
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    return-void
.end method
