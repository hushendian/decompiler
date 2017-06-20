.class Lcom/tendcloud/tenddata/game/s$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/s$a;->a:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/s$a;->b:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/s$a;->c:Ljava/lang/String;

    .line 715
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/s$a;->d:Ljava/lang/String;

    .line 716
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/s$a;->e:Ljava/lang/String;

    return-void
.end method
