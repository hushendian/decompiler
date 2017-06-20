.class public Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/yuelan/dreampay/adapter/j;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/yuelan/dreampay/thread/ImageDownloader;

.field private f:Landroid/content/Context;

.field private g:Lcom/yuelan/codelib/download/DownloadDB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->d:Landroid/widget/ListView;

    new-instance v0, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v0}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->e:Lcom/yuelan/dreampay/thread/ImageDownloader;

    new-instance v0, Lcom/yuelan/codelib/download/DownloadDB;

    invoke-direct {v0, p1}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->g:Lcom/yuelan/codelib/download/DownloadDB;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->d:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yuelan/dreampay/date/AppInfo;

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "mili_smspay_download_listview_item"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yuelan/dreampay/adapter/j;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/adapter/j;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_smspy_download_listview_biaozhi_first"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_smspy_download_listview_game_icon"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_smspy_download_listview_game_name_text"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_smspy_download_listview_game_introduce"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_smsp_download_listview_game_app_size"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_sms_download_listview_game_download_button"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_sms_download_listview_game_install_button"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "mili_sms_download_listview_game_open_button"

    invoke-static {v0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_first"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v1, v1, Lcom/yuelan/dreampay/adapter/j;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v2, v0, Lcom/yuelan/dreampay/adapter/j;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->e:Lcom/yuelan/dreampay/thread/ImageDownloader;

    iget-object v3, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    new-instance v4, Lcom/yuelan/dreampay/adapter/i;

    invoke-direct {v4, p0}, Lcom/yuelan/dreampay/adapter/i;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)V

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getDownListButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getSlogan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->d:Landroid/widget/TextView;

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

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v0, "select * from download_info where gameid= ?"

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->g:Lcom/yuelan/codelib/download/DownloadDB;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v0, v9}, Lcom/yuelan/codelib/download/DownloadDB;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yuelan/dreampay/adapter/a;

    invoke-direct {v1, p0, v7}, Lcom/yuelan/dreampay/adapter/a;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/adapter/j;

    iput-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_sec_biaozhi"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->f:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_third_biaozhi"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    new-instance v1, Lcom/yuelan/dreampay/adapter/b;

    invoke-direct {v1, p0, v3}, Lcom/yuelan/dreampay/adapter/b;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v8, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    new-instance v0, Lcom/yuelan/dreampay/adapter/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/adapter/c;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v0, v0, Lcom/yuelan/dreampay/adapter/j;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->c:Lcom/yuelan/dreampay/adapter/j;

    iget-object v8, v0, Lcom/yuelan/dreampay/adapter/j;->f:Landroid/widget/Button;

    new-instance v0, Lcom/yuelan/dreampay/adapter/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/adapter/f;-><init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_7
    move-object v0, v8

    goto/16 :goto_2
.end method
