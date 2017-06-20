.class Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a(I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_1

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mInfalter:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$9(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "xl_suspension_item"

    invoke-static {v2, v3}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_describe_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_iv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_ib"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_num_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a(I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v2

    const/16 v1, 0x14

    if-lt p1, v1, :cond_2

    iget-object v1, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/y;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6b21\u4e0b\u8f7d    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {v1, v3, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->d:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->convertStr2Num(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$10(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->convertStr2Num(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$10(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v3, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4ebf\u6b21\u4e0b\u8f7d    "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    if-lez v3, :cond_5

    :try_start_2
    iget-object v4, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e07\u6b21\u4e0b\u8f7d    "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_6

    iget-object v3, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6b21\u4e0b\u8f7d    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6b21\u4e0b\u8f7d    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method
