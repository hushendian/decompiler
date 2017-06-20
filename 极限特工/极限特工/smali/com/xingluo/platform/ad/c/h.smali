.class Lcom/xingluo/platform/ad/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLPointerGameData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v3}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v4}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v5}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v6}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->j()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iC:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/c/h;->b:Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
