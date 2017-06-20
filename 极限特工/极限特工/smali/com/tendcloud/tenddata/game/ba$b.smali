.class Lcom/tendcloud/tenddata/game/ba$b;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:I = 0xa

.field static final b:I = 0x3

.field static final c:I = 0x32

.field static final d:I = -0x55


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/16 v0, 0xa

    iput v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->e:I

    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->f:I

    .line 430
    const/16 v0, 0x32

    iput v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->g:I

    .line 431
    const/16 v0, -0x55

    iput v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->h:I

    .line 432
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->e:I

    return v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 439
    iput p1, p0, Lcom/tendcloud/tenddata/game/ba$b;->e:I

    .line 440
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->f:I

    return v0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 447
    iput p1, p0, Lcom/tendcloud/tenddata/game/ba$b;->f:I

    .line 448
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->g:I

    return v0
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Lcom/tendcloud/tenddata/game/ba$b;->g:I

    .line 456
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/tendcloud/tenddata/game/ba$b;->h:I

    return v0
.end method

.method d(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lcom/tendcloud/tenddata/game/ba$b;->h:I

    .line 464
    return-void
.end method
