.class final Lcom/yuelan/dreampay/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/c;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    iput-object p2, p0, Lcom/yuelan/dreampay/activity/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/c;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-virtual {v1, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
