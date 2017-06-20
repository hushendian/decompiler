.class public Lcom/tendcloud/tenddata/game/ce;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ce$b;,
        Lcom/tendcloud/tenddata/game/ce$a;,
        Lcom/tendcloud/tenddata/game/ce$d;,
        Lcom/tendcloud/tenddata/game/ce$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "OperationManager"

.field private static final c:I = 0x6

.field private static d:Lcom/tendcloud/tenddata/game/ce;


# instance fields
.field a:Ljava/util/concurrent/locks/Lock;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/tendcloud/tenddata/game/cd;

.field private g:Ljava/util/HashMap;

.field private h:Ljava/util/zip/CRC32;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/util/concurrent/locks/Lock;

    .line 56
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ce;->b()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->f:Lcom/tendcloud/tenddata/game/cd;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->g:Ljava/util/HashMap;

    .line 60
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->f:[Lcom/tendcloud/tenddata/game/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 61
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ce;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->h:Ljava/util/zip/CRC32;

    .line 65
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/ce;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/tendcloud/tenddata/game/ce;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ce;->d:Lcom/tendcloud/tenddata/game/ce;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/tendcloud/tenddata/game/ce;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ce;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ce;->d:Lcom/tendcloud/tenddata/game/ce;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/tendcloud/tenddata/game/ce;->d:Lcom/tendcloud/tenddata/game/ce;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ce;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ce;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ce;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ce;->c(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ce;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    .line 68
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->i:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->j:Ljava/util/Map;

    .line 72
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/a;->f:[Lcom/tendcloud/tenddata/game/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 73
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "td_database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SaaS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 77
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ce;->i:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v4, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 84
    :cond_1
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ce;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/ce;->b(Ljava/io/File;)V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/io/File;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    if-nez p1, :cond_0

    move v0, v2

    .line 153
    :goto_0
    return v0

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 142
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 143
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 142
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_3
    const-wide/32 v3, 0x100000

    div-long/2addr v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    move v0, v2

    .line 153
    goto :goto_0
.end method

.method private d(Ljava/io/File;)Ljava/util/List;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 161
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cf;-><init>(Lcom/tendcloud/tenddata/game/ce;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/a;I)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 193
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 194
    new-instance v7, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "td_database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SaaS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationFolder is not exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :cond_0
    monitor-exit p0

    return-object v6

    .line 201
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 203
    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    .line 204
    array-length v0, v8

    if-ge v0, p2, :cond_2

    array-length p2, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    :goto_0
    if-ge v5, p2, :cond_0

    .line 208
    :try_start_2
    new-instance v9, Ljava/io/File;

    aget-object v2, v8, v5

    invoke-direct {v9, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lcom/tendcloud/tenddata/game/cd;

    aget-object v10, v8, v5

    invoke-direct {v2, v10}, Lcom/tendcloud/tenddata/game/cd;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v10, "rw"

    invoke-direct {v0, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 212
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 214
    if-nez v3, :cond_5

    .line 216
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    if-eqz v3, :cond_3

    .line 252
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    .line 256
    :cond_3
    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    :cond_4
    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 206
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_0

    .line 260
    :catch_0
    move-exception v4

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 262
    goto :goto_1

    .line 220
    :cond_5
    const-wide/16 v9, 0x1

    :try_start_6
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 225
    new-array v9, v9, [B

    .line 226
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 228
    iget-object v10, p0, Lcom/tendcloud/tenddata/game/ce;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    .line 229
    iget-object v10, p0, Lcom/tendcloud/tenddata/game/ce;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v10, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 230
    iget-object v10, p0, Lcom/tendcloud/tenddata/game/ce;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    if-ne v4, v10, :cond_b

    .line 231
    if-eqz v9, :cond_8

    .line 233
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/ce;->a(Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    :goto_2
    if-eqz v3, :cond_6

    .line 252
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    .line 256
    :cond_6
    if-eqz v0, :cond_7

    .line 257
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    :cond_7
    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 262
    goto :goto_1

    .line 237
    :cond_8
    :try_start_8
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/tendcloud/tenddata/game/ce$b;

    invoke-direct {v9, p0, v2, p1}, Lcom/tendcloud/tenddata/game/ce$b;-><init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/a;)V

    invoke-interface {v4, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 245
    :catch_1
    move-exception v4

    .line 247
    :goto_3
    :try_start_9
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/tendcloud/tenddata/game/ce$b;

    invoke-direct {v9, p0, v2, p1}, Lcom/tendcloud/tenddata/game/ce$b;-><init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/a;)V

    invoke-interface {v4, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 251
    if-eqz v3, :cond_9

    .line 252
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    .line 256
    :cond_9
    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v1

    :cond_a
    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 262
    goto :goto_1

    .line 242
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/tendcloud/tenddata/game/ce$b;

    invoke-direct {v9, p0, v2, p1}, Lcom/tendcloud/tenddata/game/ce$b;-><init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/a;)V

    invoke-interface {v4, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    .line 251
    :goto_4
    if-eqz v3, :cond_c

    .line 252
    :try_start_c
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 256
    :cond_c
    if-eqz v4, :cond_d

    .line 257
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 262
    :cond_d
    :goto_5
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 192
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :catch_2
    move-exception v4

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 263
    goto/16 :goto_1

    .line 260
    :catch_3
    move-exception v4

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    .line 263
    goto/16 :goto_1

    .line 260
    :catch_4
    move-exception v1

    goto :goto_5

    .line 250
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 245
    :catch_5
    move-exception v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v4

    goto :goto_3
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/bx;)V
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendcloud/tenddata/game/ce$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ce$d;-><init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/cd;Lcom/tendcloud/tenddata/game/bx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendcloud/tenddata/game/ce$a;

    invoke-direct {v1, p0, p1}, Lcom/tendcloud/tenddata/game/ce$a;-><init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public getFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .locals 5

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce;->j:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->i:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->j:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->j:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 99
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    goto :goto_0
.end method
