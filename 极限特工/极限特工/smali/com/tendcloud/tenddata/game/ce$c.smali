.class Lcom/tendcloud/tenddata/game/ce$c;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/ce;

.field private final b:Ljava/lang/String;

.field private c:Lcom/tendcloud/tenddata/game/ce;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ce;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ce;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce$c;->a:Lcom/tendcloud/tenddata/game/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce$c;->b:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ce$c;->c:Lcom/tendcloud/tenddata/game/ce;

    .line 277
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 281
    .line 283
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    const-string v0, "OperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder path is not exists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ce$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 289
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 290
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gtz v3, :cond_2

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    throw v0

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method
