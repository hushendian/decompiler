.class public Lcom/xingluo/platform/tsz/afinal/b/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/b/a/c$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x800000

.field private static final b:I = 0x3200000

.field private static final c:I = 0x2710

.field private static final d:Z = true

.field private static final e:Z = true


# instance fields
.field private f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

.field private g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

.field private h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/tsz/afinal/b/a/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Lcom/xingluo/platform/tsz/afinal/b/a/c$a;)V

    return-void
.end method

.method private a(Lcom/xingluo/platform/tsz/afinal/b/a/c$a;)V
    .locals 5

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget-boolean v0, v0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget-boolean v0, v0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/k;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    :cond_0
    :goto_0
    iget-boolean v0, p1, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->f:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget-object v0, v0, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/b/a/h;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget v2, v2, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->c:I

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget v3, v3, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->b:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/xingluo/platform/tsz/afinal/b/a/h;-><init>(Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/a;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->h:Lcom/xingluo/platform/tsz/afinal/b/a/c$a;

    iget v1, v1, Lcom/xingluo/platform/tsz/afinal/b/a/c$a;->a:I

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/b/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    invoke-interface {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->c()V

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    invoke-interface {v0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/d/c;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/d/c;->a([B)J

    move-result-wide v1

    array-length v3, v0

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/tsz/afinal/b/a/h;->a(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/b/a/g$a;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/d/c;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/tsz/afinal/d/c;->a([B)J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;

    invoke-direct {v4}, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;-><init>()V

    iput-wide v2, v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;->a:J

    iget-object v2, p2, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    iput-object v2, v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;->b:[B

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/tsz/afinal/b/a/h;->a(Lcom/xingluo/platform/tsz/afinal/b/a/h$a;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;->b:[B

    invoke-static {v1, v2}, Lcom/xingluo/platform/tsz/afinal/d/c;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;->b:[B

    iput-object v2, p2, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    array-length v1, v1

    iput v1, p2, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    iget v1, v4, Lcom/xingluo/platform/tsz/afinal/b/a/h$a;->c:I

    iget v2, p2, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->b:I

    sub-int/2addr v1, v2

    iput v1, p2, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->c:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/h;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/i;->a()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/tsz/afinal/b/a/c;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->f:Lcom/xingluo/platform/tsz/afinal/b/a/h;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/h;->close()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/c;->g:Lcom/xingluo/platform/tsz/afinal/b/a/i;

    invoke-interface {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/i;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
