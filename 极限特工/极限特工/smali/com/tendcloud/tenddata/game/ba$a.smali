.class Lcom/tendcloud/tenddata/game/ba$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/ba;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:B

.field private e:B

.field private f:B


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ba;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 352
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->a:Lcom/tendcloud/tenddata/game/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->b:Ljava/lang/String;

    .line 354
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->c:Ljava/lang/String;

    .line 355
    const/16 v0, -0x7f

    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->d:B

    .line 356
    iput-byte v1, p0, Lcom/tendcloud/tenddata/game/ba$a;->e:B

    .line 357
    iput-byte v1, p0, Lcom/tendcloud/tenddata/game/ba$a;->f:B

    .line 358
    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/ba;Ljava/lang/String;Ljava/lang/String;BBB)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->a:Lcom/tendcloud/tenddata/game/ba;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ba$a;->b:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ba$a;->c:Ljava/lang/String;

    .line 365
    iput-byte p4, p0, Lcom/tendcloud/tenddata/game/ba$a;->d:B

    .line 366
    iput-byte p5, p0, Lcom/tendcloud/tenddata/game/ba$a;->e:B

    .line 367
    iput-byte p6, p0, Lcom/tendcloud/tenddata/game/ba$a;->f:B

    .line 368
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(B)V
    .locals 0

    .prologue
    .line 391
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->d:B

    .line 392
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->b:Ljava/lang/String;

    .line 376
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method b(B)V
    .locals 0

    .prologue
    .line 399
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->e:B

    .line 400
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->c:Ljava/lang/String;

    .line 384
    return-void
.end method

.method c()B
    .locals 1

    .prologue
    .line 387
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->d:B

    return v0
.end method

.method c(B)V
    .locals 0

    .prologue
    .line 407
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ba$a;->f:B

    .line 408
    return-void
.end method

.method d()B
    .locals 1

    .prologue
    .line 395
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->e:B

    return v0
.end method

.method e()B
    .locals 1

    .prologue
    .line 403
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ba$a;->f:B

    return v0
.end method

.method f()Lcom/tendcloud/tenddata/game/ba$a;
    .locals 7

    .prologue
    .line 411
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$a;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ba$a;->a:Lcom/tendcloud/tenddata/game/ba;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ba$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ba$a;->c:Ljava/lang/String;

    iget-byte v4, p0, Lcom/tendcloud/tenddata/game/ba$a;->d:B

    iget-byte v5, p0, Lcom/tendcloud/tenddata/game/ba$a;->e:B

    iget-byte v6, p0, Lcom/tendcloud/tenddata/game/ba$a;->f:B

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ba$a;-><init>(Lcom/tendcloud/tenddata/game/ba;Ljava/lang/String;Ljava/lang/String;BBB)V

    return-object v0
.end method
