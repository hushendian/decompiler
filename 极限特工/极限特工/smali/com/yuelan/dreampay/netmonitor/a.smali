.class final Lcom/yuelan/dreampay/netmonitor/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/a;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/a;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->a(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/a;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->a(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
