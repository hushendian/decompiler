.class public Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/yuelan/codelib/views/DownLoadListView;

.field private d:Lcom/yuelan/dreampay/view/LoadingDialog;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Ljava/util/ArrayList;

.field private q:Landroid/view/LayoutInflater;

.field private r:Landroid/widget/LinearLayout;

.field private s:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

.field private t:Lcom/yuelan/dreampay/activity/f;

.field private u:Lcom/yuelan/dreampay/activity/e;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/view/WindowManager;

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->w:Ljava/lang/String;

    new-instance v0, Lcom/yuelan/dreampay/activity/a;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/activity/a;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    move v0, v3

    :goto_0
    if-lt v0, v2, :cond_3

    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    move v1, v3

    :goto_2
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_3
    move v4, v3

    :goto_4
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-le v4, v0, :cond_b

    :cond_2
    return-void

    :cond_3
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-direct {v6}, Lcom/yuelan/dreampay/date/LocalAppInfo;-><init>()V

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/yuelan/dreampay/date/LocalAppInfo;->setAppName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yuelan/dreampay/date/LocalAppInfo;->setAppFilePath(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/yuelan/codelib/utils/AppUtil;->showUninstallAPKIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/yuelan/dreampay/date/LocalAppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_4

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u5305\u540d:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/yuelan/dreampay/date/LocalAppInfo;->setAppPackageName(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v0, :cond_9

    if-gt v0, v9, :cond_9

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x5

    if-gt v1, v0, :cond_a

    if-gt v0, v10, :cond_a

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    const/16 v1, 0x9

    if-gt v1, v0, :cond_1

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v3

    :goto_6
    if-lt v5, v7, :cond_d

    :cond_c
    const/4 v0, 0x3

    if-eq v4, v0, :cond_2

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->q:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string v2, "mili_smspay_download_listview_viewpager_item"

    invoke-static {p0, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->y:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "id"

    const-string v1, "mili_smspay_listview_viewpager_textview"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/LocalAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "id"

    const-string v1, "mili_smspay_listview_viewpager_icon"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "id"

    const-string v2, "mili_smspay_listview_viewpager_button"

    invoke-static {p0, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/LocalAppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/LocalAppInfo;->getAppFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/LocalAppInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/LocalAppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/LocalAppInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u6253\u5f00"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/yuelan/dreampay/activity/b;

    invoke-direct {v0, p0, v9}, Lcom/yuelan/dreampay/activity/b;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x3

    if-eq v5, v0, :cond_c

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_6

    :cond_e
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/yuelan/dreampay/activity/c;

    invoke-direct {v0, p0, v2}, Lcom/yuelan/dreampay/activity/c;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->s:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/codelib/views/DownLoadListView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->c:Lcom/yuelan/codelib/views/DownLoadListView;

    return-object v0
.end method

.method static synthetic e(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->s:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/view/LoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    return-object v0
.end method

.method static synthetic g(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Lcom/yuelan/dreampay/activity/e;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->u:Lcom/yuelan/dreampay/activity/e;

    return-object v0
.end method

.method static synthetic i(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "mili_smspay_download_list_back"

    invoke-static {p0, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout"

    const-string v1, "mili_smspay_download_list_layout"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->x:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->x:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->x:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->y:I

    new-instance v0, Lcom/yuelan/dreampay/activity/f;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/activity/f;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->t:Lcom/yuelan/dreampay/activity/f;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "broadcast_download_litstview_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->t:Lcom/yuelan/dreampay/activity/f;

    invoke-virtual {p0, v2, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->t:Lcom/yuelan/dreampay/activity/f;

    invoke-virtual {p0, v0, v1}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->q:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->i:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/view/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e:Ljava/util/ArrayList;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_listview_viewpager_unselect_first"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->m:Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "mili_smspay_top_layout"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->r:Landroid/widget/LinearLayout;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_listview_viewpager_unselect_sec"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->n:Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_listview_viewpager_unselect_third"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->o:Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_list_title"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->g:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_listview_viewpager"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    const-string v0, "id"

    const-string v1, "mili_smspay_download_list_back"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->b:Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "mili_smspay_download_list"

    invoke-static {p0, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/views/DownLoadListView;

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->c:Lcom/yuelan/codelib/views/DownLoadListView;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "netConnectionType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "MILI_PAY_APPID"

    invoke-static {p0, v2}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAInt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a()V

    new-instance v1, Lcom/yuelan/dreampay/activity/e;

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->p:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/yuelan/dreampay/activity/e;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->u:Lcom/yuelan/dreampay/activity/e;

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->u:Lcom/yuelan/dreampay/activity/e;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/yuelan/dreampay/activity/d;

    invoke-direct {v2, p0}, Lcom/yuelan/dreampay/activity/d;-><init>(Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->h:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/thread/SetAlarmThread;

    iget-object v3, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->a:Landroid/os/Handler;

    invoke-direct {v2, v3, v0}, Lcom/yuelan/dreampay/thread/SetAlarmThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->t:Lcom/yuelan/dreampay/activity/f;

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->v:Ljava/lang/String;

    return-void
.end method

.method protected onStop()V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->v:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->w:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
