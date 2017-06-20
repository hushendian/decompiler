.class final Lcom/yuelan/dreampay/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/adapter/a;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    iput-object p2, p0, Lcom/yuelan/dreampay/adapter/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/a;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/a;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v1}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
