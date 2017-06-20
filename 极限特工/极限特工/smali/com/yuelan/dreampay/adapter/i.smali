.class final Lcom/yuelan/dreampay/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/adapter/i;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/i;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->b(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
