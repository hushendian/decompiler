.class public Lcom/yuelan/dreampay/common/AnalysisAdData;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field public appInfoList:Ljava/util/ArrayList;

.field public appNoExitList:Ljava/util/ArrayList;

.field private b:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public analysisData(Ljava/lang/String;)Lcom/yuelan/dreampay/date/AppInfo;
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->b:Ljava/util/Random;

    const-string v1, "set_alarm.info"

    iget-object v3, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "list"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_0

    :goto_1
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->b:Ljava/util/Random;

    iget-object v3, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

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

    :goto_3
    return-object v0

    :cond_0
    :try_start_1
    new-instance v4, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-direct {v4}, Lcom/yuelan/dreampay/date/AppInfo;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "playerNum"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setPlayerNum(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appSize"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setAppSize(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setAppUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "icon"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "img"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "slogan"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/date/AppInfo;->setSlogan(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->b:Ljava/util/Random;

    iget-object v2, p0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    goto/16 :goto_3

    :cond_4
    move-object v0, v2

    goto/16 :goto_3

    :cond_5
    move-object v0, v2

    goto/16 :goto_3
.end method
