.class public Lcom/tendcloud/tenddata/game/bz;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static final c:Ljava/util/zip/CRC32;

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x0

.field private static final g:I = 0x3

.field private static final h:I = 0x4

.field private static final i:I = 0x5

.field private static final j:I = 0x1d4c0

.field private static final k:I = 0x7530

.field private static final l:I = 0x7530

.field private static final m:I = 0xa

.field private static final n:I = 0x1b7740

.field private static final q:Z = true

.field private static volatile r:Lcom/tendcloud/tenddata/game/bz;

.field private static s:Landroid/os/HandlerThread;


# instance fields
.field private o:J

.field private p:Z

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "v1"

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->a:Ljava/lang/String;

    .line 43
    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->c:Ljava/util/zip/CRC32;

    .line 326
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->r:Lcom/tendcloud/tenddata/game/bz;

    .line 372
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bz;->b()Lcom/tendcloud/tenddata/game/bz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bz;->o:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/bz;->p:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    .line 342
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleDataForward"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->s:Landroid/os/HandlerThread;

    .line 343
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 344
    new-instance v0, Lcom/tendcloud/tenddata/game/cb;

    sget-object v1, Lcom/tendcloud/tenddata/game/bz;->s:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/cb;-><init>(Lcom/tendcloud/tenddata/game/bz;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    .line 367
    invoke-static {}, Lcom/tendcloud/tenddata/game/bz;->e()V

    .line 368
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bz;->a()V

    .line 369
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bz;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 6

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ce;->getFileLock(Lcom/tendcloud/tenddata/game/a;)V

    .line 176
    invoke-static {}, Lcom/tendcloud/tenddata/game/cc;->b()Lcom/tendcloud/tenddata/game/cc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/cc;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/List;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 178
    :cond_0
    const-string v0, "No new data found!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ce;->releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V

    .line 222
    :goto_0
    return-void

    .line 181
    :cond_1
    :try_start_1
    const-string v1, "New data found, Submitting..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 183
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->e(Ljava/lang/String;)[B

    move-result-object v5

    .line 189
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->c:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 190
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->c:Ljava/util/zip/CRC32;

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRACKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/bz;->c:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v0, "/1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 203
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/s$d;->a()I

    move-result v0

    .line 205
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bz;->o:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/bz;->p:Z

    .line 208
    invoke-static {}, Lcom/tendcloud/tenddata/game/cc;->b()Lcom/tendcloud/tenddata/game/cc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/cc;->sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V

    .line 209
    const-string v0, "Data submitted successfully!"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ce;->releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V

    goto/16 :goto_0

    .line 198
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/bz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/bz;->c:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 219
    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ce;->releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/bz;->p:Z

    .line 213
    const-string v0, "Failed to submit data!"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 219
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/ce;->a()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tendcloud/tenddata/game/ce;->releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V

    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bz;Lcom/tendcloud/tenddata/game/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/bz;->a(Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForInternal([Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_1
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_3
    if-eqz p3, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 238
    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 241
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/util/zip/Inflater;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v3, v4, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 242
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 246
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    .line 253
    :goto_1
    if-eqz v1, :cond_0

    .line 254
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    :cond_0
    :goto_2
    return-object v0

    .line 248
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 249
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 250
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_2

    .line 256
    :catch_1
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 251
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static b()Lcom/tendcloud/tenddata/game/bz;
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->r:Lcom/tendcloud/tenddata/game/bz;

    if-nez v0, :cond_1

    .line 332
    const-class v1, Lcom/tendcloud/tenddata/game/bz;

    monitor-enter v1

    .line 333
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->r:Lcom/tendcloud/tenddata/game/bz;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/tendcloud/tenddata/game/bz;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bz;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->r:Lcom/tendcloud/tenddata/game/bz;

    .line 336
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bz;->r:Lcom/tendcloud/tenddata/game/bz;

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/tendcloud/tenddata/game/bz;->d()Z

    move-result v0

    return v0
.end method

.method private static d()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x1

    .line 98
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 101
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v3, v0

    .line 103
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v5, "TD_app_pefercen_profile"

    const-string v6, "TD_sdk_last_send_time"

    const-wide/16 v7, 0x0

    invoke-static {v0, v5, v6, v7, v8}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->e()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1388

    cmp-long v0, v7, v9

    if-ltz v0, :cond_0

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    sub-long/2addr v3, v7

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v0, v3, v11

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x64

    rem-long v0, v1, v3

    const-wide/16 v2, 0x64

    rem-long v2, v5, v2

    sub-long/2addr v0, v2

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v0, v0, v11

    if-ltz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tendcloud/tenddata/game/ca;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/ca;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v1, 0x1d4c0

    const/16 v0, 0x7530

    const/4 v6, 0x5

    .line 78
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 81
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ad;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-boolean v1, p0, Lcom/tendcloud/tenddata/game/bz;->p:Z

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7530

    :cond_0
    move v1, v0

    .line 89
    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cj;->b()Lcom/tendcloud/tenddata/game/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cj;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 91
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-static {v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v4, v1

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/bz;->p:Z

    if-nez v0, :cond_2

    const v0, 0xea60

    .line 86
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 94
    :cond_3
    return-void
.end method

.method public final onTDEBEventForwardRequest(Lcom/tendcloud/tenddata/game/bu;)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x7530

    const/4 v6, 0x5

    .line 295
    if-eqz p1, :cond_0

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ad;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bz;->a()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    sget-object v3, Lcom/tendcloud/tenddata/game/bu$a;->a:Lcom/tendcloud/tenddata/game/bu$a;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/bu$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    sget-object v3, Lcom/tendcloud/tenddata/game/bu$a;->b:Lcom/tendcloud/tenddata/game/bu$a;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/bu$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/game/bz;->o:J

    sub-long/2addr v2, v4

    .line 317
    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 318
    cmp-long v4, v2, v0

    if-lez v4, :cond_6

    .line 321
    :goto_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bz;->t:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    move-wide v0, v2

    .line 318
    goto :goto_1
.end method
