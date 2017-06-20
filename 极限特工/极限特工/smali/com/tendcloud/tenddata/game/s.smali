.class public Lcom/tendcloud/tenddata/game/s;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/s$b;,
        Lcom/tendcloud/tenddata/game/s$a;,
        Lcom/tendcloud/tenddata/game/s$c;,
        Lcom/tendcloud/tenddata/game/s$d;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static volatile c:Ljava/util/HashMap; = null

.field private static final d:I = 0x258

.field private static final e:I = 0xea60

.field private static final f:I = 0xea60

.field private static g:Landroid/content/Context;

.field private static volatile h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0xea60

    .line 46
    sput v0, Lcom/tendcloud/tenddata/game/s;->a:I

    .line 47
    sput v0, Lcom/tendcloud/tenddata/game/s;->b:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/s;->c:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/s;->g:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/s$d;
    .locals 1

    .prologue
    .line 58
    sput-object p0, Lcom/tendcloud/tenddata/game/s;->g:Landroid/content/Context;

    .line 59
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/s$d;
    .locals 4

    .prologue
    const/16 v3, 0x258

    .line 274
    new-instance v0, Lcom/tendcloud/tenddata/game/s$d;

    invoke-direct {v0, v3}, Lcom/tendcloud/tenddata/game/s$d;-><init>(I)V

    .line 276
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    .line 279
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-ne v1, v3, :cond_0

    .line 280
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 284
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    .line 286
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-eq v1, v3, :cond_2

    .line 287
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;)V

    .line 294
    :cond_2
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 295
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 296
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    .line 298
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-eq v1, v3, :cond_3

    .line 299
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    :cond_3
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    .line 306
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/s$d;

    move-result-object v0

    .line 309
    iget v1, v0, Lcom/tendcloud/tenddata/game/s$d;->a:I

    if-eq v1, v3, :cond_0

    .line 310
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/s$d;
    .locals 4

    .prologue
    const/16 v3, 0x258

    .line 325
    :try_start_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    .line 335
    :goto_0
    if-nez v0, :cond_2

    .line 336
    new-instance v0, Lcom/tendcloud/tenddata/game/s$d;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/s$d;-><init>(ILjava/lang/String;)V

    .line 347
    :goto_1
    return-object v0

    .line 333
    :cond_1
    invoke-static {p1, p0}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 341
    :cond_3
    invoke-static {p3, v0}, Lcom/tendcloud/tenddata/game/s;->a([BLjava/net/URLConnection;)Lcom/tendcloud/tenddata/game/s$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    .line 347
    new-instance v0, Lcom/tendcloud/tenddata/game/s$d;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/tendcloud/tenddata/game/s$d;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BLjava/net/URLConnection;)Lcom/tendcloud/tenddata/game/s$d;
    .locals 9

    .prologue
    const/16 v1, 0x258

    const/4 v2, 0x0

    const v7, 0xea60

    .line 429
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 430
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/s$d;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/s$d;-><init>(ILjava/lang/String;)V

    .line 492
    :goto_0
    return-object v0

    .line 435
    :cond_1
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 436
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    :try_start_0
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 441
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 442
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 445
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 447
    const/16 v1, 0x190

    if-le v0, v1, :cond_6

    .line 448
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 452
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 454
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 455
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 458
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    .line 464
    :goto_3
    if-eqz v2, :cond_2

    .line 465
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 470
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 471
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 476
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 477
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 483
    :cond_4
    :goto_6
    if-eqz p1, :cond_5

    .line 484
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 489
    :cond_5
    :goto_7
    sput v7, Lcom/tendcloud/tenddata/game/s;->a:I

    .line 490
    sput v7, Lcom/tendcloud/tenddata/game/s;->b:I

    .line 492
    :goto_8
    new-instance v1, Lcom/tendcloud/tenddata/game/s$d;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tendcloud/tenddata/game/s$d;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 450
    :cond_6
    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v4

    goto :goto_1

    .line 464
    :cond_7
    if-eqz v3, :cond_8

    .line 465
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 470
    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 471
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 476
    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    .line 477
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 483
    :cond_a
    :goto_b
    if-eqz p1, :cond_b

    .line 484
    :try_start_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 489
    :cond_b
    :goto_c
    sput v7, Lcom/tendcloud/tenddata/game/s;->a:I

    .line 490
    sput v7, Lcom/tendcloud/tenddata/game/s;->b:I

    goto :goto_8

    .line 463
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 464
    :goto_d
    if-eqz v3, :cond_c

    .line 465
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 470
    :cond_c
    :goto_e
    if-eqz v2, :cond_d

    .line 471
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 476
    :cond_d
    :goto_f
    if-eqz v4, :cond_e

    .line 477
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 483
    :cond_e
    :goto_10
    if-eqz p1, :cond_f

    .line 484
    :try_start_11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    .line 489
    :cond_f
    :goto_11
    sput v7, Lcom/tendcloud/tenddata/game/s;->a:I

    .line 490
    sput v7, Lcom/tendcloud/tenddata/game/s;->b:I

    throw v0

    .line 467
    :catch_1
    move-exception v2

    goto :goto_9

    .line 473
    :catch_2
    move-exception v1

    goto :goto_a

    .line 479
    :catch_3
    move-exception v1

    goto :goto_b

    .line 486
    :catch_4
    move-exception v1

    goto :goto_c

    .line 467
    :catch_5
    move-exception v2

    goto :goto_4

    .line 473
    :catch_6
    move-exception v1

    goto :goto_5

    .line 479
    :catch_7
    move-exception v1

    goto :goto_6

    .line 486
    :catch_8
    move-exception v1

    goto :goto_7

    .line 467
    :catch_9
    move-exception v1

    goto :goto_e

    .line 473
    :catch_a
    move-exception v1

    goto :goto_f

    .line 479
    :catch_b
    move-exception v1

    goto :goto_10

    .line 486
    :catch_c
    move-exception v1

    goto :goto_11

    .line 463
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_d

    .line 458
    :catch_d
    move-exception v0

    move v0, v1

    move-object v3, v2

    move-object v1, v2

    goto/16 :goto_3

    :catch_e
    move-exception v0

    move v0, v1

    move-object v1, v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_3

    :catch_f
    move-exception v1

    move-object v1, v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_3

    :catch_10
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 570
    const-class v2, Lcom/tendcloud/tenddata/game/s;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 591
    :goto_0
    monitor-exit v2

    return-object v0

    .line 573
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 574
    goto :goto_0

    .line 576
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/s$a;

    .line 577
    if-nez v0, :cond_3

    move-object v0, v1

    .line 578
    goto :goto_0

    .line 581
    :cond_3
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 591
    goto :goto_0

    .line 583
    :pswitch_0
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/s$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/s$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/s$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 589
    :pswitch_3
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/s$a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/tendcloud/tenddata/game/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 257
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p1, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    .line 256
    goto :goto_0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;
    .locals 3

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 365
    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "User-Agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-eqz p1, :cond_0

    .line 370
    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "Content-Type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 377
    if-eqz p2, :cond_1

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 380
    :cond_1
    sget v1, Lcom/tendcloud/tenddata/game/s;->a:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 381
    sget v1, Lcom/tendcloud/tenddata/game/s;->b:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 386
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 393
    :try_start_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 395
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 400
    :goto_0
    new-instance v2, Lcom/tendcloud/tenddata/game/s$c;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/s;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/s$c;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 401
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 405
    new-instance v2, Lcom/tendcloud/tenddata/game/t;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/t;-><init>()V

    .line 415
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 418
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 424
    :goto_1
    return-object p0

    .line 398
    :cond_0
    const-string v1, "TLSv1"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 424
    goto :goto_1
.end method

.method public static a(ZLjava/security/cert/X509Certificate;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 77
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    new-instance v2, Lcom/tendcloud/tenddata/game/s$c;

    invoke-direct {v2, p1}, Lcom/tendcloud/tenddata/game/s$c;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 79
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 85
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 91
    :goto_1
    return-object v0

    .line 81
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 261
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0, v4}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/s;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 521
    const-class v1, Lcom/tendcloud/tenddata/game/s;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 524
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/s$a;

    .line 528
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_0
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/s$a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 533
    :pswitch_1
    :try_start_2
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/s$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 536
    :pswitch_2
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/s$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 539
    :pswitch_3
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/s$a;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 7

    .prologue
    .line 728
    if-eqz p0, :cond_0

    .line 732
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cipher Suite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 738
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 739
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Hash Code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Public Key Algorithm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 742
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Public Key Format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 744
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 753
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 173
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 175
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 177
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 188
    :goto_1
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 180
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 181
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 203
    .line 205
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 210
    sget-object v3, Lcom/tendcloud/tenddata/game/s;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    move-object v2, v0

    .line 218
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    .line 219
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 220
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 224
    const/16 v5, 0x1000

    :try_start_3
    new-array v5, v5, [B

    .line 225
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 226
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 227
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 236
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 241
    :goto_2
    if-eqz v0, :cond_0

    .line 242
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_3
    move-object v0, v1

    .line 247
    :cond_1
    :goto_4
    return-object v0

    .line 230
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->a([B)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    .line 241
    if-eqz v2, :cond_1

    .line 242
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 244
    :catch_1
    move-exception v1

    goto :goto_4

    .line 241
    :cond_3
    if-eqz v2, :cond_0

    .line 242
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 244
    :catch_2
    move-exception v0

    goto :goto_3

    .line 240
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 241
    :goto_5
    if-eqz v2, :cond_4

    .line 242
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 245
    :cond_4
    :goto_6
    throw v0

    .line 244
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_6

    .line 240
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 236
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    const/4 v3, 0x0

    .line 104
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 110
    sget-object v5, Lcom/tendcloud/tenddata/game/s;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v2, v0

    .line 117
    :goto_1
    :try_start_2
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 123
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_7

    .line 124
    if-eqz p2, :cond_4

    .line 125
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/s;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    const-string v5, "utf-8"

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    :goto_2
    if-eqz v1, :cond_2

    .line 149
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 154
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 160
    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_4
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 128
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 131
    const-string v3, "/n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 142
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 148
    :goto_6
    if-eqz v1, :cond_5

    .line 149
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 154
    :cond_5
    :goto_7
    if-eqz v0, :cond_3

    .line 155
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 157
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v1, v0

    .line 134
    goto :goto_2

    .line 137
    :cond_7
    :try_start_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    .line 148
    if-eqz v1, :cond_8

    .line 149
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 154
    :cond_8
    :goto_8
    if-eqz v2, :cond_0

    .line 155
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 157
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 147
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 148
    :goto_9
    if-eqz v1, :cond_9

    .line 149
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 154
    :cond_9
    :goto_a
    if-eqz v2, :cond_a

    .line 155
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 158
    :cond_a
    :goto_b
    throw v0

    .line 151
    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_3

    .line 157
    :catch_5
    move-exception v0

    goto :goto_4

    .line 151
    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_a

    .line 157
    :catch_8
    move-exception v1

    goto :goto_b

    .line 147
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_9

    .line 142
    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_a
    move-exception v2

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :cond_b
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 497
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 516
    :cond_1
    :goto_0
    return-object v0

    .line 499
    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 502
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 503
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    if-eqz v2, :cond_1

    .line 511
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    .line 510
    if-eqz v2, :cond_3

    .line 511
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v0, v1

    .line 514
    goto :goto_0

    .line 513
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 515
    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    .line 510
    if-eqz v2, :cond_4

    .line 511
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 514
    :cond_4
    :goto_1
    throw v0

    .line 513
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 547
    const-class v1, Lcom/tendcloud/tenddata/game/s;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 550
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 554
    :try_start_2
    new-instance v0, Lcom/tendcloud/tenddata/game/s$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/s$a;-><init>()V

    .line 555
    iput-object p0, v0, Lcom/tendcloud/tenddata/game/s$a;->e:Ljava/lang/String;

    .line 556
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/s$a;->a:Ljava/lang/String;

    .line 557
    sget-object v2, Lcom/tendcloud/tenddata/game/s;->g:Landroid/content/Context;

    .line 558
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/s$a;->c:Ljava/lang/String;

    .line 559
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 560
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/s$a;->b:Ljava/lang/String;

    .line 561
    sget-object v2, Lcom/tendcloud/tenddata/game/s;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
