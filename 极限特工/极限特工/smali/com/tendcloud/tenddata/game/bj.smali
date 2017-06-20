.class Lcom/tendcloud/tenddata/game/bj;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bi;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bi;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bj;->a:Lcom/tendcloud/tenddata/game/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/ak;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/bk;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/bk;-><init>(Lcom/tendcloud/tenddata/game/bj;)V

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ak;->registerTestDeviceListener(Lcom/tendcloud/tenddata/game/ak$a;)V

    .line 162
    return-void
.end method
