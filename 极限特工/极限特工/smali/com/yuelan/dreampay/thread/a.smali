.class final Lcom/yuelan/dreampay/thread/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/thread/ImageDownloader;

.field private final synthetic b:Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/thread/ImageDownloader;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/a;->a:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iput-object p2, p0, Lcom/yuelan/dreampay/thread/a;->b:Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;

    iput-object p3, p0, Lcom/yuelan/dreampay/thread/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/a;->b:Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/a;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;->onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
