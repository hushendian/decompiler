.class Lcom/tendcloud/tenddata/game/at;
.super Ljava/lang/ThreadLocal;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/as;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/as;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/at;->a:Lcom/tendcloud/tenddata/game/as;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/at;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method
