.class public Lcom/yuelan/dreampay/netmonitor/WindowDialogView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Lcom/yuelan/codelib/download/DownloadDB;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/content/Context;

.field private g:Lcom/yuelan/dreampay/thread/ImageDownloader;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Lcom/yuelan/dreampay/date/AppInfo;

.field private k:Ljava/util/Random;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/yuelan/codelib/download/DownloadDB;

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->b:Lcom/yuelan/codelib/download/DownloadDB;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->k:Ljava/util/Random;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    new-instance v0, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v0}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->g:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "mili_smspay_window_dialog"

    invoke-static {v2, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_game_ad_close"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_game_ad"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->e:Landroid/widget/ImageView;

    const-string v0, "set_alarm.info"

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type5"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v0, v3, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->k:Ljava/util/Random;

    iget-object v3, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->i:Ljava/util/ArrayList;

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

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->j:Lcom/yuelan/dreampay/date/AppInfo;

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->j:Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->g:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->j:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    new-instance v4, Lcom/yuelan/dreampay/netmonitor/a;

    invoke-direct {v4, p0}, Lcom/yuelan/dreampay/netmonitor/a;-><init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->g:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->j:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    new-instance v4, Lcom/yuelan/dreampay/netmonitor/b;

    invoke-direct {v4, p0}, Lcom/yuelan/dreampay/netmonitor/b;-><init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V

    const/16 v5, 0x64

    invoke-virtual/range {v0 .. v5}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/yuelan/dreampay/netmonitor/c;

    invoke-direct {v1, p0}, Lcom/yuelan/dreampay/netmonitor/c;-><init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/yuelan/dreampay/netmonitor/f;

    invoke-direct {v1, p0}, Lcom/yuelan/dreampay/netmonitor/f;-><init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    :try_start_1
    new-instance v3, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-direct {v3}, Lcom/yuelan/dreampay/date/AppInfo;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appSize"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppSize(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setAppUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "img"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "slogan"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yuelan/dreampay/date/AppInfo;->setSlogan(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Lcom/yuelan/dreampay/date/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->j:Lcom/yuelan/dreampay/date/AppInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
