.class Lcom/tendcloud/tenddata/game/ce$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/ce;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/tendcloud/tenddata/game/cd;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/bx;)V
    .locals 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce$d;->a:Lcom/tendcloud/tenddata/game/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "td_database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 313
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SaaS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce$d;->b:Ljava/lang/String;

    .line 314
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce$d;->c:Lcom/tendcloud/tenddata/game/cd;

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->a:Lcom/tendcloud/tenddata/game/ce;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ce;->a(Lcom/tendcloud/tenddata/game/ce;Ljava/io/File;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->c:Lcom/tendcloud/tenddata/game/cd;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 331
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 337
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->c:Lcom/tendcloud/tenddata/game/cd;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cd;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 338
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->c:Lcom/tendcloud/tenddata/game/cd;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cd;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 339
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce$d;->c:Lcom/tendcloud/tenddata/game/cd;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cd;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 340
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 342
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method
