.class Lcom/xingluo/platform/ad/e/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/e/a;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/e/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/e/b;->a:Lcom/xingluo/platform/ad/e/a;

    iput-object p2, p0, Lcom/xingluo/platform/ad/e/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/b;->a:Lcom/xingluo/platform/ad/e/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/e/a;->a(Lcom/xingluo/platform/ad/e/a;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "initRecommendGameData  doInBackground"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/e/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "xl_recommendgamedata_limit"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/util/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    goto :goto_0
.end method

.method protected a(Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/b;->a:Lcom/xingluo/platform/ad/e/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/e/a;->a(Lcom/xingluo/platform/ad/e/a;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "initRecommendGameData  onPostExecute"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/b;->a:Lcom/xingluo/platform/ad/e/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/e/a;->a(Lcom/xingluo/platform/ad/e/a;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "initRecommendGameData result != null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->f(I)V

    invoke-static {}, Lcom/xingluo/platform/ad/e/a;->a()Lcom/xingluo/platform/ad/e/a;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, p1, v2}, Lcom/xingluo/platform/ad/e/a;->onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/e/b;->a([Ljava/lang/Void;)Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/e/b;->a(Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;)V

    return-void
.end method
