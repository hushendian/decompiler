.class public final enum Lcom/tendcloud/tenddata/game/bf$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/bf$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/bf$a;

.field public static final enum c:Lcom/tendcloud/tenddata/game/bf$a;

.field private static final synthetic d:[Lcom/tendcloud/tenddata/game/bf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    new-instance v0, Lcom/tendcloud/tenddata/game/bf$a;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf$a;->a:Lcom/tendcloud/tenddata/game/bf$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bf$a;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/tendcloud/tenddata/game/bf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf$a;->b:Lcom/tendcloud/tenddata/game/bf$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bf$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/tendcloud/tenddata/game/bf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bf$a;->c:Lcom/tendcloud/tenddata/game/bf$a;

    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/bf$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/bf$a;->a:Lcom/tendcloud/tenddata/game/bf$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/game/bf$a;->b:Lcom/tendcloud/tenddata/game/bf$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/game/bf$a;->c:Lcom/tendcloud/tenddata/game/bf$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tendcloud/tenddata/game/bf$a;->d:[Lcom/tendcloud/tenddata/game/bf$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/bf$a;
    .locals 1

    .prologue
    .line 356
    const-class v0, Lcom/tendcloud/tenddata/game/bf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bf$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/bf$a;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/tendcloud/tenddata/game/bf$a;->d:[Lcom/tendcloud/tenddata/game/bf$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/bf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/bf$a;

    return-object v0
.end method
