.class final Lcom/yuelan/dreampay/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_select"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_select"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_unselect"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-static {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/d;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    const-string v2, "drawable"

    const-string v3, "mili_smspay_download_listview_viewpager_select"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
