.class public Lcom/xingluo/platform/gameplus/broadcast/GPInstallPackageReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final ACTION_GP_PACKAGE_INSTALLED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field private static final MSG_PACKAGE_INSTALLED_GAME_ID:Ljava/lang/String; = "gp_game_id"

.field private static final MSG_PACKAGE_INSTALLED_GAME_PKG:Ljava/lang/String; = "gp_game_pkg"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gp_game_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gp_game_pkg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "tim"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620f\u5b89\u88c5\u5b8c\u6210\uff1a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
