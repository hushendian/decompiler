.class Lcom/tendcloud/tenddata/game/z$a;
.super Lcom/tendcloud/tenddata/game/z;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/z;-><init>(Ljava/lang/String;)V

    .line 285
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/z$a;->b:Ljava/util/ArrayList;

    .line 286
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/z$a;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 287
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/z$a;->b:Ljava/util/ArrayList;

    new-instance v5, Lcom/tendcloud/tenddata/game/z$b;

    invoke-direct {v5, v3}, Lcom/tendcloud/tenddata/game/z$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 296
    :cond_0
    return-void

    .line 290
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static a(I)Lcom/tendcloud/tenddata/game/z$a;
    .locals 5

    .prologue
    .line 273
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/z$a;

    const-string v1, "/proc/%d/cgroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/z$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/z$b;
    .locals 6

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/z$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/z$b;

    .line 301
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/z$b;->b:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 302
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 303
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    :goto_1
    return-object v0

    .line 302
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
