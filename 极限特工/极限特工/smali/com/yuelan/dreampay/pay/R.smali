.class final Lcom/yuelan/dreampay/pay/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/RelativeLayout;

.field private final synthetic b:Landroid/view/animation/Animation;

.field private final synthetic c:Lcom/yuelan/dreampay/common/AnalysisAdData;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Landroid/widget/TextView;

.field private final synthetic f:Landroid/widget/TextView;

.field private final synthetic g:Landroid/widget/TextView;

.field private final synthetic h:Landroid/widget/TextView;

.field private final synthetic i:Landroid/widget/ImageView;

.field private final synthetic j:Lcom/yuelan/dreampay/thread/ImageDownloader;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;Landroid/view/animation/Animation;Lcom/yuelan/dreampay/common/AnalysisAdData;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yuelan/dreampay/thread/ImageDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/R;->a:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/R;->b:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/R;->c:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/R;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/R;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/yuelan/dreampay/pay/R;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/yuelan/dreampay/pay/R;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/yuelan/dreampay/pay/R;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/yuelan/dreampay/pay/R;->i:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/yuelan/dreampay/pay/R;->j:Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0xc8

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/R;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/R;->c:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iget-object v1, v1, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->c:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iget-object v1, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->c:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iget-object v0, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    sget v2, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yuelan/dreampay/date/AppInfo;

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->d:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getPlayerNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getSlogan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->d:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/yuelan/dreampay/thread/ImageDownloader;->loadImageFromUrlExist(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/R;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/R;->d:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v2, v0, v3}, Lcom/yuelan/dreampay/thread/ImageDownloader;->loadIconFromSd(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/R;->j:Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/R;->d:Landroid/content/Context;

    new-instance v4, Lcom/yuelan/dreampay/pay/S;

    iget-object v5, p0, Lcom/yuelan/dreampay/pay/R;->i:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Lcom/yuelan/dreampay/pay/S;-><init>(Lcom/yuelan/dreampay/pay/R;Landroid/widget/ImageView;)V

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    goto :goto_0
.end method
