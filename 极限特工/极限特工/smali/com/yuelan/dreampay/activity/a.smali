.class final Lcom/yuelan/dreampay/activity/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->f(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->b(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v2}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    new-instance v1, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    iget-object v3, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v3}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->c(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v4}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->d(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/codelib/views/DownLoadListView;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    invoke-static {v0, v1}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->d(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/codelib/views/DownLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v1}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/views/DownLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->f(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-direct {v1}, Lcom/yuelan/dreampay/date/AppInfo;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "appId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "appName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "appSize"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setAppSize(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "appUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setAppUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "img"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "slogan"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setSlogan(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "buttonText"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/AppInfo;->setDownListButtonText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v2}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->c(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/a;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->f(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
