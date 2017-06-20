.class public Lcom/xingluo/platform/gameplus/b/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Lcom/xingluo/platform/gameplus/b/b$a; = null

.field private static final b:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gp_installed_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,game_id TEXT UNIQUE NOT NULL,display_name TEXT,download_url TEXT,package_name TEXT,version TEXT,version_int INTEGER,size INTEGER,installed_date INTEGER )"

.field private static final c:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gp_download_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,game_id TEXT ,display_name TEXT,icon_url TEXT,download_url TEXT,package_name TEXT,local_path TEXT,save_name TEXT,size INTEGER,version TEXT,version_int INTEGER,current INTEGER DEFAULT 0,total INTEGER DEFAULT 0,dl_state INTEGER,download_date INTEGER,promotion TEXT,bgurl TEXT,autoinstall INTEGER DEFAULT 1,replace_other INTEGER DEFAULT 0,iscellularable INTEGER DEFAULT 0,pushicon TEXT,pushbg TEXT )"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "gp_app.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/b$a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/gameplus/b/b$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/gameplus/b/b$a;->a:Lcom/xingluo/platform/gameplus/b/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/b/b$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/b/b$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/gameplus/b/b$a;->a:Lcom/xingluo/platform/gameplus/b/b$a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/b/b$a;->a:Lcom/xingluo/platform/gameplus/b/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "AppDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppStorgeSqliteHelper onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS gp_installed_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,game_id TEXT UNIQUE NOT NULL,display_name TEXT,download_url TEXT,package_name TEXT,version TEXT,version_int INTEGER,size INTEGER,installed_date INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS gp_download_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,game_id TEXT ,display_name TEXT,icon_url TEXT,download_url TEXT,package_name TEXT,local_path TEXT,save_name TEXT,size INTEGER,version TEXT,version_int INTEGER,current INTEGER DEFAULT 0,total INTEGER DEFAULT 0,dl_state INTEGER,download_date INTEGER,promotion TEXT,bgurl TEXT,autoinstall INTEGER DEFAULT 1,replace_other INTEGER DEFAULT 0,iscellularable INTEGER DEFAULT 0,pushicon TEXT,pushbg TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to upgrade to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xingluo/platform/gameplus/b/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static declared-synchronized b(Landroid/content/Context;)Lcom/xingluo/platform/gameplus/b/b$a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/gameplus/b/b$a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/xingluo/platform/gameplus/b/b$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/b/b$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/gameplus/b/b$a;->a:Lcom/xingluo/platform/gameplus/b/b$a;

    sget-object v0, Lcom/xingluo/platform/gameplus/b/b$a;->a:Lcom/xingluo/platform/gameplus/b/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x3

    const-string v0, "AppDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppStorgeSqliteHelper onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, v4}, Lcom/xingluo/platform/gameplus/b/b$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    :goto_0
    if-le p2, p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/gameplus/b/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
