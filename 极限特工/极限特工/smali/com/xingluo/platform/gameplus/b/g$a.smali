.class public Lcom/xingluo/platform/gameplus/b/g$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/b/g;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/gameplus/b/g;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/b/g$a;->a:Lcom/xingluo/platform/gameplus/b/g;

    const-string v0, "gp_imagecache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table gp_imagecache(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT not null, path TEXT not null, date TEXT not null, d1 TEXT,d2 TEXT,d3 TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/b/g$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
