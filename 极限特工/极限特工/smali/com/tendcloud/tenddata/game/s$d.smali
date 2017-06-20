.class public Lcom/tendcloud/tenddata/game/s$d;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 605
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/game/s$d;-><init>(ILjava/lang/String;)V

    .line 606
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput p1, p0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    .line 601
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/s$d;->b:Ljava/lang/String;

    .line 602
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/s$d;->b:Ljava/lang/String;

    return-object v0
.end method
