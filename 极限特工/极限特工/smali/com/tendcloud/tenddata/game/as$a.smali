.class Lcom/tendcloud/tenddata/game/as$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/tendcloud/tenddata/game/aw;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/aw;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/as$a;->a:Ljava/lang/Object;

    .line 319
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/as$a;->b:Lcom/tendcloud/tenddata/game/aw;

    .line 320
    return-void
.end method
