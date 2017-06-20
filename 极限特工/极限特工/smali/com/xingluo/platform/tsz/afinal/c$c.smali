.class Lcom/xingluo/platform/tsz/afinal/c$c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/tsz/afinal/c;

.field private b:Lcom/xingluo/platform/tsz/afinal/c$b;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/tsz/afinal/c;Landroid/content/Context;Ljava/lang/String;ILcom/xingluo/platform/tsz/afinal/c$b;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c$c;->a:Lcom/xingluo/platform/tsz/afinal/c;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/xingluo/platform/tsz/afinal/c$c;->b:Lcom/xingluo/platform/tsz/afinal/c$b;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$c;->b:Lcom/xingluo/platform/tsz/afinal/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$c;->b:Lcom/xingluo/platform/tsz/afinal/c$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/xingluo/platform/tsz/afinal/c$b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$c;->a:Lcom/xingluo/platform/tsz/afinal/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c;->a()V

    goto :goto_0
.end method
