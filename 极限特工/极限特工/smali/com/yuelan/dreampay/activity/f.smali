.class final Lcom/yuelan/dreampay/activity/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast_download_litstview_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->g(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/f;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/activity/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/activity/e;->notifyDataSetChanged()V

    goto :goto_0
.end method
