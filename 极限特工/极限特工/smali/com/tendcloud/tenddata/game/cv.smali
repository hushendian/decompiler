.class public final enum Lcom/tendcloud/tenddata/game/cv;
.super Ljava/lang/Enum;
.source "td"


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/cv;

.field public static final enum b:Lcom/tendcloud/tenddata/game/cv;

.field public static final enum c:Lcom/tendcloud/tenddata/game/cv;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/game/cv;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/tendcloud/tenddata/game/cv;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v3, v2}, Lcom/tendcloud/tenddata/game/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cv;->a:Lcom/tendcloud/tenddata/game/cv;

    .line 5
    new-instance v0, Lcom/tendcloud/tenddata/game/cv;

    const-string v1, "CELLULAR"

    const-string v2, "cellular"

    invoke-direct {v0, v1, v4, v2}, Lcom/tendcloud/tenddata/game/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cv;->b:Lcom/tendcloud/tenddata/game/cv;

    .line 6
    new-instance v0, Lcom/tendcloud/tenddata/game/cv;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetooth"

    invoke-direct {v0, v1, v5, v2}, Lcom/tendcloud/tenddata/game/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cv;->c:Lcom/tendcloud/tenddata/game/cv;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/cv;

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->a:Lcom/tendcloud/tenddata/game/cv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->b:Lcom/tendcloud/tenddata/game/cv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->c:Lcom/tendcloud/tenddata/game/cv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tendcloud/tenddata/game/cv;->e:[Lcom/tendcloud/tenddata/game/cv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cv;->d:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/cv;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/tendcloud/tenddata/game/cv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cv;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/cv;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tendcloud/tenddata/game/cv;->e:[Lcom/tendcloud/tenddata/game/cv;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/cv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/cv;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:Ljava/lang/String;

    return-object v0
.end method
