.class final Lcom/yuelan/codelib/download/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/codelib/download/DownLoadService;


# direct methods
.method constructor <init>(Lcom/yuelan/codelib/download/DownLoadService;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/codelib/download/a;)Lcom/yuelan/codelib/download/DownLoadService;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v1, 0x1

    aget-object v1, v12, v1

    const-string v4, "NO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x2

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v10, v1, v3

    double-to-int v6, v10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    rem-int/lit8 v1, v6, 0xa

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intValue"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const/16 v1, 0x9

    aget-object v1, v12, v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yuelan/dreampay/date/ConFigFile;->SD_Path:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v12, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "filePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x64

    if-ne v6, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v4, 0x5

    aget-object v4, v12, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x6

    aget-object v7, v12, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v4, v5, v7, v8}, Lcom/yuelan/dreampay/common/AppDo;->DownLoadApkRecord(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "broadcast_download_litstview_update"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/yuelan/codelib/download/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v1, 0x7

    aget-object v1, v12, v1

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-virtual {v1, v2}, Lcom/yuelan/codelib/download/DownLoadService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v1}, Lcom/yuelan/codelib/download/DownLoadService;->a(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/NotifyView;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v12, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v5, 0x4

    aget-object v5, v12, v5

    const/16 v7, 0xc8

    invoke-static {v4, v5, v7}, Lcom/yuelan/dreampay/thread/ImageDownloader;->loadIconFromSd(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v14}, Lcom/yuelan/codelib/download/DownLoadService;->b(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    mul-double/2addr v7, v14

    const/4 v14, 0x2

    invoke-static {v7, v8, v14}, Lcom/yuelan/codelib/utils/MathUtil;->roundDouble(DI)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "M/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v7}, Lcom/yuelan/codelib/download/DownLoadService;->b(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "M"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    const/4 v8, 0x0

    aget-object v8, v12, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v1 .. v9}, Lcom/yuelan/codelib/download/NotifyView;->showDownloadView(Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;ILandroid/app/PendingIntent;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v1}, Lcom/yuelan/codelib/download/DownLoadService;->a(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/NotifyView;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v12, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v5, 0x4

    aget-object v5, v12, v5

    const/16 v7, 0xc8

    invoke-static {v4, v5, v7}, Lcom/yuelan/dreampay/thread/ImageDownloader;->loadIconFromSd(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v14}, Lcom/yuelan/codelib/download/DownLoadService;->b(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    mul-double/2addr v7, v14

    const/4 v14, 0x2

    invoke-static {v7, v8, v14}, Lcom/yuelan/codelib/utils/MathUtil;->roundDouble(DI)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "M/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v7}, Lcom/yuelan/codelib/download/DownLoadService;->b(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "M"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    const/4 v8, 0x0

    aget-object v8, v12, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v1 .. v9}, Lcom/yuelan/codelib/download/NotifyView;->showDownloadView(Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;ILandroid/app/PendingIntent;)V

    :cond_1
    move-wide v2, v10

    :cond_2
    const/16 v1, 0x64

    if-eq v6, v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v12, v1

    const-string v4, "NO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x0

    const/16 v4, 0x64

    if-ne v6, v4, :cond_9

    const/4 v1, 0x1

    :cond_4
    :goto_3
    const-string v4, "update download_info set state = ?,jindu = ? where gameid = ?"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v5}, Lcom/yuelan/codelib/download/DownLoadService;->c(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v5, v4, v6}, Lcom/yuelan/codelib/download/DownloadDB;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v12, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x7

    aget-object v1, v12, v1

    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/yuelan/codelib/download/b;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/yuelan/codelib/download/b;-><init>(Lcom/yuelan/codelib/download/a;Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v12, v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    const-string v2, "record_alarm.info"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v2, v1, v3}, Lcom/yuelan/codelib/utils/FileUtil;->writeDateFile(Ljava/lang/String;[BLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x1

    aget-object v4, v12, v4

    const-string v5, "NO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, -0x1

    const/4 v2, 0x2

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x3

    aget-object v4, v12, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yuelan/codelib/download/a;->a:Lcom/yuelan/codelib/download/DownLoadService;

    const/4 v5, 0x4

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x5

    aget-object v7, v12, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/yuelan/dreampay/common/AppDo;->DownLoadApkRecord(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method
