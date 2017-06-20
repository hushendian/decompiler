.class Lcom/xingluo/platform/ad/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game"

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    const-string v2, "xl_txt_game_installed"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->j()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iD:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v9}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/k;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
