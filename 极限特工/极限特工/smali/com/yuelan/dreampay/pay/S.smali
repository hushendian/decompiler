.class final Lcom/yuelan/dreampay/pay/S;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/R;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/R;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/S;->a:Lcom/yuelan/dreampay/pay/R;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/S;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/S;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
