.class final Lcom/yuelan/dreampay/pay/W;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;


# instance fields
.field private final synthetic a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/W;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/W;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
