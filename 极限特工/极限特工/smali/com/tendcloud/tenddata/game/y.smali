.class public Lcom/tendcloud/tenddata/game/y;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final l:J = 0x300000L

.field private static final m:Ljava/lang/String; = "td-cache"

.field private static final n:Ljava/lang/String; = "td-cache_pos_pref"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/io/File;

.field c:Ljava/io/RandomAccessFile;

.field d:Ljava/lang/String;

.field e:Ljava/util/zip/CRC32;

.field f:Ljava/util/concurrent/locks/Lock;

.field g:Ljava/nio/channels/FileLock;

.field h:Ljava/util/concurrent/locks/Lock;

.field i:J

.field j:J

.field k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/y;->h:Ljava/util/concurrent/locks/Lock;

    .line 31
    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    .line 32
    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->k:J

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/y;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    .line 40
    const-string v0, "td-cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/y;->b:Ljava/io/File;

    .line 41
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/y;->g()V

    .line 43
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/y;->a()V

    .line 45
    const-string v0, "td-cache_pos_pref"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 46
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->i:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/y;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x300000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/y;->f()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/y;->b()V

    .line 65
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/y;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/y;->b()V

    throw v0

    .line 49
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a([B)V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 314
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 315
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 316
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 317
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 318
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 319
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 321
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 326
    return-void

    .line 324
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(J)Z
    .locals 9

    .prologue
    const/16 v7, 0x2e

    const/16 v8, 0x1f

    const/4 v0, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    .line 186
    if-ne v1, v8, :cond_1

    .line 189
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 190
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v3

    .line 193
    if-ltz v3, :cond_2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move v1, v0

    .line 197
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/zip/CRC32;->update(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    .line 199
    if-ne v1, v8, :cond_2

    .line 201
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v1, v3

    if-ne v2, v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v0, 0x1

    .line 240
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 238
    :goto_1
    return v0

    .line 216
    :cond_1
    if-ne v1, v7, :cond_2

    .line 218
    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 223
    if-ltz v1, :cond_2

    int-to-long v3, v1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    if-ne v2, v7, :cond_2

    .line 224
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 225
    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->i:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    .line 237
    :cond_2
    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    :try_start_3
    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(JZ)[B
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x2e

    const/16 v7, 0x1f

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 251
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 252
    if-ne v0, v7, :cond_0

    .line 255
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 256
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    .line 259
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 260
    new-array v0, v0, [B

    .line 261
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 262
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 263
    if-ne v3, v7, :cond_2

    .line 264
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 265
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 266
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    if-ne v2, v3, :cond_2

    .line 267
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 304
    :goto_0
    return-object v0

    .line 281
    :cond_0
    if-ne v0, v8, :cond_2

    .line 283
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 287
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 288
    if-ltz v0, :cond_2

    int-to-long v3, v0

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    if-ne v2, v8, :cond_2

    .line 289
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 290
    if-eqz p3, :cond_1

    .line 291
    int-to-long v2, v0

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->i:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 303
    :cond_2
    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    :try_start_3
    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    .line 304
    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 331
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 332
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 333
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 338
    return-void

    .line 336
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 127
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->k:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->k:J

    :goto_0
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 137
    :cond_0
    :goto_1
    :try_start_0
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 138
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/y;->a(JZ)[B

    move-result-object v2

    .line 139
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    .line 127
    :cond_1
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 149
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 151
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 152
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/y;->g()V

    .line 154
    iput-wide v6, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    .line 155
    iput-wide v6, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 156
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Landroid/content/Context;

    const-string v1, "td-cache_pos_pref"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    .line 162
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 167
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->k:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 168
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->k:J

    .line 170
    :cond_1
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 171
    invoke-direct {p0, v1, v2}, Lcom/tendcloud/tenddata/game/y;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 173
    iget-wide v3, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 174
    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    goto :goto_0

    .line 177
    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 6

    .prologue
    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->a:Landroid/content/Context;

    const-string v2, "td-cache_pos_pref"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    .line 87
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    :cond_0
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 89
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/y;->a(JZ)[B

    move-result-object v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v1, p1, :cond_0

    .line 101
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 102
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    .line 103
    :cond_3
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/y;->g:Ljava/nio/channels/FileLock;

    .line 70
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->g:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->g:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 76
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/y;->b(J)V

    .line 109
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->j:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    .line 110
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Landroid/content/Context;

    const-string v1, "td-cache_pos_pref"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/tendcloud/tenddata/game/y;->i:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 111
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 119
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/y;->d()V

    .line 123
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 124
    return-void
.end method

.method public write([B)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/y;->a([B)V

    .line 115
    return-void
.end method
