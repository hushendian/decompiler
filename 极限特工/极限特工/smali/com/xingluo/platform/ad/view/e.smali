.class Lcom/xingluo/platform/ad/view/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/view/XLLogoView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/view/XLLogoView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/xingluo/platform/ad/view/XLLogoView;->a()Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground,  drt = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    sget-object v2, Lcom/xingluo/platform/single/util/y;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/LogoInfo;

    invoke-static {}, Lcom/xingluo/platform/ad/view/XLLogoView;->a()Lcom/xingluo/platform/single/util/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground,  logoinfo = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/LogoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/ad/view/XLLogoView;->a()Lcom/xingluo/platform/single/util/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInBackground,  url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bitmap = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Lcom/xingluo/platform/ad/view/XLLogoView;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/view/XLLogoView;->a()Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "onPostExecute,  result != null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-static {v0, p1}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Lcom/xingluo/platform/ad/view/XLLogoView;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/XLLogoView;->b(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/ad/view/XLLogoView;->a()Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "onPostExecute,  shanping_1"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/XLLogoView;->a(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/e;->a:Lcom/xingluo/platform/ad/view/XLLogoView;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/XLLogoView;->c(Lcom/xingluo/platform/ad/view/XLLogoView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "shanping_1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/view/e;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/view/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
