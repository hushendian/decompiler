.class public abstract Lcom/tendcloud/tenddata/game/a;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static final a:Ljava/lang/String; = "JSON"

.field static final b:Ljava/lang/String; = "PB"

.field static final c:Ljava/lang/String; = "MP"

.field public static d:Lcom/tendcloud/tenddata/game/a;

.field public static e:Lcom/tendcloud/tenddata/game/a;

.field public static f:[Lcom/tendcloud/tenddata/game/a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 21
    new-instance v0, Lcom/tendcloud/tenddata/game/b;

    const-string v1, "ENV"

    invoke-direct {v0, v1, v3}, Lcom/tendcloud/tenddata/game/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    .line 42
    new-instance v0, Lcom/tendcloud/tenddata/game/c;

    const-string v1, "GAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    .line 65
    new-array v0, v3, [Lcom/tendcloud/tenddata/game/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->f:[Lcom/tendcloud/tenddata/game/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/a;->g:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/tendcloud/tenddata/game/a;->h:I

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    .line 86
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[Lcom/tendcloud/tenddata/game/a;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->f:[Lcom/tendcloud/tenddata/game/a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/tendcloud/tenddata/game/a;->h:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method
