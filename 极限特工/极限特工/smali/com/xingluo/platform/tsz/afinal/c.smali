.class public Lcom/xingluo/platform/tsz/afinal/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/c$a;,
        Lcom/xingluo/platform/tsz/afinal/c$b;,
        Lcom/xingluo/platform/tsz/afinal/c$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FinalDb"

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/xingluo/platform/tsz/afinal/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/xingluo/platform/tsz/afinal/c$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c;->d:Lcom/xingluo/platform/tsz/afinal/c$a;

    return-void

    :cond_2
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$c;

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->e()Lcom/xingluo/platform/tsz/afinal/c$b;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/c$c;-><init>(Lcom/xingluo/platform/tsz/afinal/c;Landroid/content/Context;Ljava/lang/String;ILcom/xingluo/platform/tsz/afinal/c$b;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c$c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    const-string v2, "\u6570\u636e\u5e93\u6587\u4ef6\u521b\u5efa\u5931\u8d25"

    invoke-direct {v1, v2, v0}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Z)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/xingluo/platform/tsz/afinal/c$b;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Z)V

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(I)V

    invoke-virtual {v0, p5}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Lcom/xingluo/platform/tsz/afinal/c$b;)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Z)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZILcom/xingluo/platform/tsz/afinal/c$b;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Z)V

    invoke-virtual {v0, p3}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(I)V

    invoke-virtual {v0, p4}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Lcom/xingluo/platform/tsz/afinal/c$b;)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c$a;->a(Z)V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 1

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c;->b(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->c()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FinalDb"

    const-string v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/b/b;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FinalDb"

    const-string v1, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Lcom/xingluo/platform/tsz/afinal/c/b/f;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static declared-synchronized b(Lcom/xingluo/platform/tsz/afinal/c$a;)Lcom/xingluo/platform/tsz/afinal/c;
    .locals 4

    const-class v1, Lcom/xingluo/platform/tsz/afinal/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/c;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c;-><init>(Lcom/xingluo/platform/tsz/afinal/c$a;)V

    sget-object v2, Lcom/xingluo/platform/tsz/afinal/c;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->d:Lcom/xingluo/platform/tsz/afinal/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->d:Lcom/xingluo/platform/tsz/afinal/c$a;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Debug SQL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v2, p1, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private d(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/b/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/b;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Landroid/database/Cursor;)Lcom/xingluo/platform/tsz/afinal/c/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public varargs a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xingluo/platform/tsz/afinal/c/a/b;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p3}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_0

    if-eqz p4, :cond_3

    array-length v1, p4

    if-nez v1, :cond_9

    :cond_3
    move v1, v2

    :goto_3
    array-length v7, p4

    move v3, v4

    :goto_4
    if-lt v3, v7, :cond_6

    :goto_5
    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    if-ne v3, v5, :cond_8

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, p2, p3, v5, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)V

    invoke-virtual {v0, p2, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    if-ne v3, v5, :cond_a

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/a/c;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_6
    aget-object v8, p4, v3

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v8, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0, p2, v1}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v1, v4

    goto :goto_3

    :cond_a
    move-object v5, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->c(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->d()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, p2, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public varargs a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\' AND name != \'sqlite_sequence\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/a/b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Landroid/database/Cursor;)Lcom/xingluo/platform/tsz/afinal/c/a/b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/util/List;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p2, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/a;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, p2, v1}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/d;

    if-eqz p3, :cond_3

    array-length v1, p3

    if-nez v1, :cond_7

    :cond_3
    move v1, v2

    :goto_2
    array-length v7, p3

    move v3, v4

    :goto_3
    if-lt v3, v7, :cond_4

    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a()Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->e()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Lcom/xingluo/platform/tsz/afinal/c/a/d;

    if-ne v3, v7, :cond_6

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/a/d;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/d;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    aget-object v8, p3, v3

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v8, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1, v1}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_2
.end method

.method public c(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->d(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->d(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->c(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/f;)V

    return-void
.end method
