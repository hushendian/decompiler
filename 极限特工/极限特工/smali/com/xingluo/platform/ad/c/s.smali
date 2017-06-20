.class Lcom/xingluo/platform/ad/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/pojos/XLPointerGameData;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    iput-object p2, p0, Lcom/xingluo/platform/ad/c/s;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e()Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game"

    iget-object v5, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/s;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v6}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->j()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iD:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/s;->a:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/s;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
