.class final Lcom/yuelan/dreampay/netmonitor/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/f;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/f;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->b(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/f;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v1}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->d(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/f;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v2}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->c(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/netmonitor/f;->a:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-static {v3}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->c(Lcom/yuelan/dreampay/netmonitor/WindowDialogView;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->removeWindowDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
