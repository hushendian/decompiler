.class public Lcom/yuelan/dreampay/common/AnalysisNotifycationData;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Random;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/yuelan/dreampay/thread/ImageDownloader;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/yuelan/dreampay/date/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->f:Lcom/yuelan/dreampay/date/AppInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public analysisNotificationData()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b:Ljava/util/Random;

    new-instance v1, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v1}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->d:Lcom/yuelan/dreampay/thread/ImageDownloader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    const-string v1, "set_alarm.info"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type4"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v1, v3, :cond_2

    :goto_1
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b:Ljava/util/Random;

    iget-object v3, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    iput-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->f:Lcom/yuelan/dreampay/date/AppInfo;

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->f:Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->d:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->f:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a:Landroid/content/Context;

    new-instance v4, Lcom/yuelan/dreampay/common/a;

    invoke-direct {v4, p0}, Lcom/yuelan/dreampay/common/a;-><init>(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)V

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-direct {v3}, Lcom/yuelan/dreampay/date/AppInfo;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appSize"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppSize(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "img"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "slogan"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setSlogan(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method
