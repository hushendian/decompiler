.class public Lcom/xingluo/platform/tsz/afinal/b/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x4

.field private static final d:I = 0x32000

.field private static final e:Lcom/xingluo/platform/tsz/afinal/b/a/g;


# instance fields
.field private a:Lcom/xingluo/platform/tsz/afinal/b/c/a;

.field private b:Lcom/xingluo/platform/tsz/afinal/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/g;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/b/a/g;-><init>(II)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->e:Lcom/xingluo/platform/tsz/afinal/b/a/g;

    return-void
.end method

.method public constructor <init>(Lcom/xingluo/platform/tsz/afinal/b/c/a;Lcom/xingluo/platform/tsz/afinal/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->a:Lcom/xingluo/platform/tsz/afinal/b/c/a;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/f;->b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->a:Lcom/xingluo/platform/tsz/afinal/b/c/a;

    invoke-interface {v1, p1}, Lcom/xingluo/platform/tsz/afinal/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    if-eqz p2, :cond_1

    array-length v0, v1

    invoke-virtual {p2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Lcom/xingluo/platform/tsz/afinal/b/a/d;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v2, p1, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v0, v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/e;)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->e:Lcom/xingluo/platform/tsz/afinal/b/a/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/g;->a()Lcom/xingluo/platform/tsz/afinal/b/a/g$a;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/f;->b:Lcom/xingluo/platform/tsz/afinal/b/a/c;

    invoke-virtual {v2, p1, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/g$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->c:I

    iget v3, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    iget v2, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    iget v3, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->c:I

    invoke-virtual {p2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->a()I

    move-result v4

    invoke-virtual {p2}, Lcom/xingluo/platform/tsz/afinal/b/a/e;->b()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xingluo/platform/tsz/afinal/b/a/d;->a([BIIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v2, Lcom/xingluo/platform/tsz/afinal/b/a/f;->e:Lcom/xingluo/platform/tsz/afinal/b/a/g;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/g;->a(Lcom/xingluo/platform/tsz/afinal/b/a/g$a;)V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    iget v2, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    iget v3, v1, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->c:I

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/xingluo/platform/tsz/afinal/b/a/f;->e:Lcom/xingluo/platform/tsz/afinal/b/a/g;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/g;->a(Lcom/xingluo/platform/tsz/afinal/b/a/g$a;)V

    throw v0
.end method
