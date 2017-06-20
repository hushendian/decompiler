.class final Lcom/yuelan/dreampay/thread/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/thread/ImageDownloader;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/thread/ImageDownloader;Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/b;->a:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iput-object p2, p0, Lcom/yuelan/dreampay/thread/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yuelan/dreampay/thread/b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/yuelan/dreampay/thread/b;->d:I

    iput-object p5, p0, Lcom/yuelan/dreampay/thread/b;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/yuelan/dreampay/thread/b;->d:I

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/thread/ImageDownloader;->loadImageFromUrl(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/b;->a:Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-static {v1}, Lcom/yuelan/dreampay/thread/ImageDownloader;->a(Lcom/yuelan/dreampay/thread/ImageDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/b;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/b;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/b;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
