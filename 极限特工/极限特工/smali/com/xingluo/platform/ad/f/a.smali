.class public Lcom/xingluo/platform/ad/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/ad/f/a;

.field private static f:I


# instance fields
.field private b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

.field private c:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private d:Lcom/xingluo/platform/ad/suspend/s;

.field private e:Z

.field private g:I

.field private h:Lcom/xingluo/platform/single/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/f/a;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/ad/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/ad/f/a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/ad/f/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/ad/f/a;->a:Lcom/xingluo/platform/ad/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/f/a;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/f/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/f/a;->a:Lcom/xingluo/platform/ad/f/a;

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/f/a;->f:I

    sget-object v0, Lcom/xingluo/platform/ad/f/a;->a:Lcom/xingluo/platform/ad/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statisticDownLoad  gameid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iy:I

    if-ne v0, v1, :cond_1

    const-string v0, "ads_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iz:I

    if-ne v0, v1, :cond_2

    const-string v0, "ads_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iA:I

    if-ne v0, v1, :cond_3

    const-string v0, "inads_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iB:I

    if-ne v0, v1, :cond_4

    const-string v0, "notice_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iC:I

    if-ne v0, v1, :cond_5

    const-string v0, "statistics_single_game_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iD:I

    if-ne v0, v1, :cond_6

    const-string v0, "statistics_single_game_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iE:I

    if-ne v0, v1, :cond_7

    const-string v0, "statistics_suspend2_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    sget v1, Lcom/xingluo/platform/single/util/a;->iF:I

    if-ne v0, v1, :cond_0

    const-string v0, "statistics_boutique_download"

    const-string v1, ""

    invoke-static {v0, p2, v1, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_data_xl_down_load_game_data"

    iget-object v2, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "intent_data_xl_down_load_game_type"

    iget v2, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_data_xl_down_load_game_flag"

    sget v2, Lcom/xingluo/platform/ad/f/a;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->d:Lcom/xingluo/platform/ad/suspend/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->d:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getXlCrossRecommendData()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/a;->c:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/f/a;->c(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V
    .locals 3

    iput-object p2, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iput-object p1, p0, Lcom/xingluo/platform/ad/f/a;->d:Lcom/xingluo/platform/ad/suspend/s;

    iput-boolean p3, p0, Lcom/xingluo/platform/ad/f/a;->e:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGameData mDLData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xingluo/platform/ad/f/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;ZI)V
    .locals 3

    iput-object p2, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iput-object p1, p0, Lcom/xingluo/platform/ad/f/a;->d:Lcom/xingluo/platform/ad/suspend/s;

    iput-boolean p3, p0, Lcom/xingluo/platform/ad/f/a;->e:Z

    sput p4, Lcom/xingluo/platform/ad/f/a;->f:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGameData mDLData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xingluo/platform/ad/f/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7

    invoke-static {p1, p5, p6}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xl_txt_game_installed"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput p7, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDownLoad mType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xingluo/platform/ad/f/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    sget v0, Lcom/xingluo/platform/single/util/a;->iy:I

    if-ne p7, v0, :cond_3

    const-string v0, "ads_pv"

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/util/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->f:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_a

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkDownLoad file_path = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " file_apk = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    invoke-static {p1, v5}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/io/File;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/xingluo/platform/single/util/a;->iz:I

    if-ne p7, v0, :cond_4

    const-string v0, "ads_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/xingluo/platform/single/util/a;->iA:I

    if-ne p7, v0, :cond_5

    const-string v0, "inads_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/xingluo/platform/single/util/a;->iB:I

    if-ne p7, v0, :cond_6

    const-string v0, "notice_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/xingluo/platform/single/util/a;->iC:I

    if-ne p7, v0, :cond_7

    const-string v0, "agame_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/xingluo/platform/single/util/a;->iD:I

    if-ne p7, v0, :cond_8

    const-string v0, "agame_pv"

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    sget v0, Lcom/xingluo/platform/single/util/a;->iE:I

    if-ne p7, v0, :cond_9

    const-string v0, "statistics_suspend2_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/xingluo/platform/single/util/a;->iF:I

    if-ne p7, v0, :cond_1

    const-string v0, "statistics_boutique_pv"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto/16 :goto_2

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xingluo/platform/gameplus/a/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xingluo/platform/single/util/t;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/f/a;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkDownLoad downloadId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    invoke-static {p1, v0, v1}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const-string v0, "xl_txt_download_running"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    const-string v0, "xl_payment_error_2003"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    move-object v1, v2

    goto :goto_3
.end method

.method public b(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xingluo/platform/single/util/t;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    invoke-static {p1, v6, v7}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;J)I

    move-result v0

    const/4 v6, 0x2

    if-ne v6, v0, :cond_1

    const-string v0, "xl_txt_download_running"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "xl_payment_error_2003"

    invoke-static {p1, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
