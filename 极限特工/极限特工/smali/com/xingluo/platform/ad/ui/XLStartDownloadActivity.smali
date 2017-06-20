.class public Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;
.super Lcom/xingluo/platform/ad/ui/XLBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;
    }
.end annotation


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private btnClose:Landroid/widget/ImageView;

.field private btnNomal:Landroid/widget/Button;

.field private btnStartSave:Landroid/widget/Button;

.field private imgGame:Landroid/widget/ImageView;

.field private mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

.field private mLogger:Lcom/xingluo/platform/single/util/i;

.field private mType:I

.field private txtGameContent:Landroid/widget/TextView;

.field private txtGameName:Landroid/widget/TextView;

.field private txtGameSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLBaseActivity;-><init>()V

    const-class v0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadBySystem()V

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadGameSearch()V

    return-void
.end method

.method private downloadBySystem()V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->n()I

    move-result v0

    if-eq v0, v10, :cond_1

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xingluo/platform/single/util/t;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    invoke-static {p0, v6, v7}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;J)I

    move-result v0

    const/4 v6, 0x2

    if-ne v6, v0, :cond_2

    const-string v0, "xl_txt_download_running"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v5}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->statisticDownLoad(Ljava/lang/String;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "xl_payment_error_2003"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private downloadGameSearch()V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v5

    const-string v0, "hdown_pv"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v5, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->startGameSearch(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "xl_payment_error_2003"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSearch19_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_60.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->n()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xingluo/platform/single/util/t;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    invoke-static {p0, v6, v7}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;J)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    const-string v0, "xl_txt_download_running"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v0, "xl_btn_start_download"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v5}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->statisticDownLoad(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string v0, "xl_payment_error_2003"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "txtGameName"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameName:Landroid/widget/TextView;

    const-string v0, "txtGameContent"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameContent:Landroid/widget/TextView;

    const-string v0, "txtGameSize"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameSize:Landroid/widget/TextView;

    const-string v0, "gameImage"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->imgGame:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->imgGame:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v2, "initView  des != null"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameContent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/y;->a(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "xlMainHeadClose"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnClose:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;-><init>(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "xlMainHeadBack"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnBack:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;-><init>(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "startAndSaveDownloadbtn"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnStartSave:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnStartSave:Landroid/widget/Button;

    new-instance v1, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;-><init>(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "nomalDownloadbtn"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnNomal:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnNomal:Landroid/widget/Button;

    new-instance v1, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;-><init>(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initView  mCrossData != null && mDLdata.getHdownFlag() == 1"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnNomal:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnStartSave:Landroid/widget/Button;

    const-string v1, "xl_saveDownload"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnNomal:Landroid/widget/Button;

    const-string v1, "xl_normalDownload"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->txtGameContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnNomal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->btnStartSave:Landroid/widget/Button;

    const-string v1, "xl_txt_start_download"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private startGameSearch(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.gamesearch.speeddownload.REQUESTRECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->finish()V

    return-void
.end method

.method private statisticDownLoad(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statisticDownLoad  gameid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iy:I

    if-ne v0, v1, :cond_1

    const-string v0, "ads_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iz:I

    if-ne v0, v1, :cond_2

    const-string v0, "ads_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iA:I

    if-ne v0, v1, :cond_3

    const-string v0, "inads_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iB:I

    if-ne v0, v1, :cond_4

    const-string v0, "notice_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iC:I

    if-ne v0, v1, :cond_5

    const-string v0, "statistics_single_game_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iD:I

    if-ne v0, v1, :cond_6

    const-string v0, "statistics_single_game_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iE:I

    if-ne v0, v1, :cond_7

    const-string v0, "statistics_suspend2_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iF:I

    if-ne v0, v1, :cond_0

    const-string v0, "statistics_boutique_download"

    const-string v1, ""

    invoke-static {v0, p1, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/xingluo/platform/ad/ui/XLBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "intent_data_xl_down_load_game_data"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    const-string v0, "intent_data_xl_down_load_game_type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getXlCrossRecommendData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    const-string v0, "intent_data_xl_down_load_game_flag"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->n()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadGameSearch()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadBySystem()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v0, v3, :cond_2

    const-string v0, "bd_layout_download_dialog_transparent"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->setContentView(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate  mType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->initView()V

    goto :goto_0

    :cond_2
    const-string v0, "xl_layout_download_dialog_transparent"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->setContentView(I)V

    goto :goto_1

    :cond_3
    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v0, v3, :cond_4

    const-string v0, "bd_layout_download_dialog"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->setContentView(I)V

    goto :goto_1

    :cond_4
    const-string v0, "xl_layout_download_dialog"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->setContentView(I)V

    goto :goto_1
.end method
