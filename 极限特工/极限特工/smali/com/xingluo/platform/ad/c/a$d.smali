.class Lcom/xingluo/platform/ad/c/a$d;
.super Lcom/xingluo/platform/ad/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/c/a$c;-><init>(Lcom/xingluo/platform/ad/c/a$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/c/a$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/c/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_1

    new-instance v1, Lcom/xingluo/platform/ad/c/a$e;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/c/a$e;-><init>()V

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "xl_suspension_item"

    invoke-static {v2, v3}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/c/a$e;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_describe_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_iv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/c/a$e;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_num_tv"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xingluo/platform/ad/c/a$e;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xl_suspension_item_ib"

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/xingluo/platform/ad/c/a$e;->a:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/c/a$d;->a(I)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v2

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    if-lt p1, v1, :cond_2

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/y;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/xingluo/platform/ad/c/a$e;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->n()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    iget-object v6, p0, Lcom/xingluo/platform/ad/c/a$d;->a:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_0
    iget-object v0, v0, Lcom/xingluo/platform/ad/c/a$e;->a:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xingluo/platform/ad/c/a$b;

    invoke-direct {v1, v2}, Lcom/xingluo/platform/ad/c/a$b;-><init>(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/c/a$e;

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->d:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/xingluo/platform/ad/c/a;->b(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xingluo/platform/ad/c/a;->b(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u4ebf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    :try_start_1
    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e07"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_6

    iget-object v4, v0, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xingluo/platform/ad/c/a$e;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
