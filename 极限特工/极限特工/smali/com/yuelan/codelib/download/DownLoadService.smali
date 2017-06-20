.class public Lcom/yuelan/codelib/download/DownLoadService;
.super Landroid/app/Service;


# static fields
.field public static final BASE_DOWNLOAD_ACTION:Ljava/lang/String; = "base_download_action"

.field public static final BROADCAST_ACTION:Ljava/lang/String; = "broadcast_action"

.field public static final BROADCAST_DOWNLOAD_LISTVIEW_UPDATE:Ljava/lang/String; = "broadcast_download_litstview_update"


# instance fields
.field private a:Lcom/yuelan/codelib/download/DownloadDB;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/yuelan/codelib/download/e;

.field private e:Landroid/database/Cursor;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field public hanlder_change:Landroid/os/Handler;

.field private i:Lcom/yuelan/codelib/download/NotifyView;

.field private j:Lcom/yuelan/dreampay/thread/ImageDownloader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/yuelan/codelib/download/a;

    invoke-direct {v0, p0}, Lcom/yuelan/codelib/download/a;-><init>(Lcom/yuelan/codelib/download/DownLoadService;)V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->hanlder_change:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/NotifyView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->i:Lcom/yuelan/codelib/download/NotifyView;

    return-object v0
.end method

.method static synthetic a(Lcom/yuelan/codelib/download/DownLoadService;Lcom/yuelan/codelib/download/DownloadInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yuelan/codelib/download/DownLoadService;->a(Lcom/yuelan/codelib/download/DownloadInfo;II)V

    return-void
.end method

.method private a(Lcom/yuelan/codelib/download/DownloadInfo;II)V
    .locals 2

    :goto_0
    const-string v0, "\u5355\u72ec\u4e0b\u8f7d"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yuelan/codelib/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/download/DownloadInfo;

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yuelan/codelib/download/c;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/yuelan/codelib/download/c;-><init>(Lcom/yuelan/codelib/download/DownLoadService;Lcom/yuelan/codelib/download/DownloadInfo;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/download/DownloadInfo;

    iget-object v2, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/codelib/download/d;

    invoke-direct {v3, p0, v0}, Lcom/yuelan/codelib/download/d;-><init>(Lcom/yuelan/codelib/download/DownLoadService;Lcom/yuelan/codelib/download/DownloadInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/DownloadDB;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->a:Lcom/yuelan/codelib/download/DownloadDB;

    return-object v0
.end method

.method static synthetic d(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/yuelan/codelib/download/DownloadDB;

    invoke-direct {v0, p0}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->a:Lcom/yuelan/codelib/download/DownloadDB;

    new-instance v0, Lcom/yuelan/codelib/download/NotifyView;

    invoke-direct {v0, p0}, Lcom/yuelan/codelib/download/NotifyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->i:Lcom/yuelan/codelib/download/NotifyView;

    new-instance v0, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v0}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->j:Lcom/yuelan/dreampay/thread/ImageDownloader;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/yuelan/codelib/download/e;

    invoke-direct {v0, p0}, Lcom/yuelan/codelib/download/e;-><init>(Lcom/yuelan/codelib/download/DownLoadService;)V

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->d:Lcom/yuelan/codelib/download/e;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "BroadCast_download_app"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->d:Lcom/yuelan/codelib/download/e;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "BroadCast_download_app"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yuelan/codelib/download/DownLoadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->d:Lcom/yuelan/codelib/download/e;

    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/download/DownLoadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string v0, "appname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->f:Ljava/lang/String;

    const-string v0, "appsize"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->g:Ljava/lang/String;

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->h:Ljava/lang/String;

    const-string v0, "select * from download_info "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->a:Lcom/yuelan/codelib/download/DownloadDB;

    if-nez v1, :cond_0

    new-instance v1, Lcom/yuelan/codelib/download/DownloadDB;

    invoke-direct {v1, p0}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->a:Lcom/yuelan/codelib/download/DownloadDB;

    :cond_0
    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->a:Lcom/yuelan/codelib/download/DownloadDB;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yuelan/codelib/download/DownloadDB;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "multiThreading"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yuelan/codelib/download/DownLoadService;->a(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-direct {v0}, Lcom/yuelan/codelib/download/DownloadInfo;-><init>()V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setState(I)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setType(I)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setJindu(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setIconUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setDowmLoadType(I)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setPopupType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setPopupText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->e:Landroid/database/Cursor;

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownloadInfo;->setApkpathtype(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-direct {p0, v0, v3, v5}, Lcom/yuelan/codelib/download/DownLoadService;->a(Lcom/yuelan/codelib/download/DownloadInfo;II)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/yuelan/codelib/download/DownLoadService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-direct {p0, v0, v3, v4}, Lcom/yuelan/codelib/download/DownLoadService;->a(Lcom/yuelan/codelib/download/DownloadInfo;II)V

    goto/16 :goto_1
.end method
