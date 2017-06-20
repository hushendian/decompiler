.class public Lcom/xingluo/platform/gameplus/broadcast/GPNotificaionReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final ACTION_CANCLE_NOTIFICATION:Ljava/lang/String; = "xingluo.platform.gameplus.intent.action.CANCLE_NOTIFICATION"

.field public static final ACTION_DO_CLICK_ACTION:Ljava/lang/String; = "xingluo.platform.gameplus.intent.action.DO_NOTIFICATION_CLICK"

.field public static final ACTION_DO_PACKAGE_INSTALLED_ACTION:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_DO_PACKAGE_REPLACED_ACTION:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ARG_ACTION_EXTRA_APK_PATH:Ljava/lang/String; = "action_extra_apk_path"

.field public static final ARG_ACTION_EXTRA_GAME_ID:Ljava/lang/String; = "action_extra_game_id"

.field public static final ARG_ACTION_EXTRA_GAME_NAME:Ljava/lang/String; = "action_extra_game_name"

.field public static final ARG_ACTION_EXTRA_GAME_PKG:Ljava/lang/String; = "action_extra_game_pkg"

.field public static final ARG_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final ARG_NOTIFICATION_UPDATE:Ljava/lang/String; = "notification_update"

.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NotificaionReceiver"

    sput-object v0, Lcom/xingluo/platform/gameplus/broadcast/GPNotificaionReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, -0x1

    const-string v0, "xingluo.platform.gameplus.intent.action.CANCLE_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "notification_id"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/xingluo/platform/gameplus/broadcast/GPNotificaionReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notification_id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xingluo/platform/gameplus/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "xingluo.platform.gameplus.intent.action.DO_NOTIFICATION_CLICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "tim"

    const-string v1, "bundle == null"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "tim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "action_extra_apk_path"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "action_extra_game_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_extra_apk_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "action_extra_game_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_extra_game_pkg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "action_extra_game_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "tim"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "locapath>>>>: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    invoke-direct {v4}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;-><init>()V

    invoke-virtual {v4, v3}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->a(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v4, v0}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->b(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->c(Ljava/lang/String;)V

    if-nez v2, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->d(Ljava/lang/String;)V

    const-string v0, "tim"

    const-string v1, "\u5e38\u89c4\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xingluo/platform/gameplus/install/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    const-string v0, "tim"

    const-string v1, "localpPath\uff1d\uff1dnull"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->b()Lcom/xingluo/platform/gameplus/b/a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/xingluo/platform/gameplus/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method
