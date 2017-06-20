.class Lcom/xingluo/platform/ad/view/c;
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
.field final synthetic a:Lcom/xingluo/platform/ad/view/a;

.field private final synthetic b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

.field private final synthetic c:I

.field private final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/view/a;Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    iput-object p2, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    iput p3, p0, Lcom/xingluo/platform/ad/view/c;->c:I

    iput-object p4, p0, Lcom/xingluo/platform/ad/view/c;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->g(Lcom/xingluo/platform/ad/view/a;)Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->g(Lcom/xingluo/platform/ad/view/a;)Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->c()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/view/c;->c:I

    if-ne v1, v0, :cond_6

    iget v0, p0, Lcom/xingluo/platform/ad/view/c;->c:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/view/a;->a(Lcom/xingluo/platform/ad/view/a;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0, p1}, Lcom/xingluo/platform/ad/view/a;->a(Lcom/xingluo/platform/ad/view/a;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/a;->h(Lcom/xingluo/platform/ad/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/view/c;->a:Lcom/xingluo/platform/ad/view/a;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/c;->b:Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/view/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/ad/view/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/view/c;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/view/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
