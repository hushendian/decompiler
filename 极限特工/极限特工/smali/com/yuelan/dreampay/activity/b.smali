.class final Lcom/yuelan/dreampay/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/b;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    iput-object p2, p0, Lcom/yuelan/dreampay/activity/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/b;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/b;->a:Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-virtual {v1, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
