.class Lcom/tendcloud/tenddata/game/bk;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/ak$a;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bj;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bj;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->a:Lcom/tendcloud/tenddata/game/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 151
    const-string v1, "app"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 152
    const-string v1, "test"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 154
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/tendcloud/tenddata/game/bu;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bu;-><init>()V

    .line 157
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    .line 158
    sget-object v1, Lcom/tendcloud/tenddata/game/bu$a;->a:Lcom/tendcloud/tenddata/game/bu$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    .line 159
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
