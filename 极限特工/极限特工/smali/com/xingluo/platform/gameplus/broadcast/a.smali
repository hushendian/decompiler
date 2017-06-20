.class public Lcom/xingluo/platform/gameplus/broadcast/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/xingluo/platform/gameplus/broadcast/a; = null

.field private static final b:I = 0xc9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/gameplus/broadcast/a;->a:Lcom/xingluo/platform/gameplus/broadcast/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/broadcast/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/gameplus/broadcast/a;->a:Lcom/xingluo/platform/gameplus/broadcast/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/broadcast/a;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/broadcast/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/broadcast/a;->a:Lcom/xingluo/platform/gameplus/broadcast/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/broadcast/a;->a:Lcom/xingluo/platform/gameplus/broadcast/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const-string v0, "ic_notifier"

    invoke-static {p1, v0}, Lcom/xingluo/platform/gameplus/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    if-eqz p3, :cond_0

    iput-object p3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gp_notification_custom_layout"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "gp_layout_push_normal"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "gp_im_notification_bg"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "gp_tv_notification_content"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "gp_tv_notification_time"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xingluo/platform/gameplus/utils/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gp_im_notification_img"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notifier"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "xingluo.platform.gameplus.intent.action.DO_NOTIFICATION_CLICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "notification_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "action_extra_apk_path"

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action_extra_game_id"

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action_extra_game_name"

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action_extra_game_pkg"

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "xingluo.platform.gameplus.intent.action.CANCLE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "notification_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-nez p5, :cond_6

    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/app/Notification;->flags:I

    :goto_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_2
    return-void

    :cond_1
    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v2

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->t()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xingluo/platform/gameplus/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "gp_im_notification_img"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notifier"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "tim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uff0d\uff0d\uff0d\uff0d\uff0d\u53d1\u9001\u901a\u77e5\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xingluo/platform/gameplus/utils/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "gp_im_notification_img"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "gp_im_notification_img"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notifier"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "gp_layout_push_normal"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "gp_im_notification_bg"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/g;->a()Lcom/xingluo/platform/gameplus/utils/g;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/b/e;->a()Lcom/xingluo/platform/gameplus/b/f;

    move-result-object v3

    invoke-virtual {p6}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xingluo/platform/gameplus/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/gameplus/utils/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "tim"

    const-string v4, "image\u4ee5\u83b7\u53d6: "

    invoke-static {v3, v4}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gp_im_notification_bg"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "gp_layout_push_normal"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "gp_im_notification_bg"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "gp_tv_notification_content"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "gp_tv_notification_time"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xingluo/platform/gameplus/utils/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "gp_im_notification_img"

    invoke-static {p1, v2}, Lcom/xingluo/platform/gameplus/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notifier"

    invoke-static {p1, v3}, Lcom/xingluo/platform/gameplus/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :cond_6
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xingluo/platform/gameplus/install/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
