.class public Lcom/xingluo/platform/ad/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/c/a$a;,
        Lcom/xingluo/platform/ad/c/a$b;,
        Lcom/xingluo/platform/ad/c/a$c;,
        Lcom/xingluo/platform/ad/c/a$d;,
        Lcom/xingluo/platform/ad/c/a$e;
    }
.end annotation


# static fields
.field public static a:Lcom/xingluo/platform/ad/view/a;

.field public static b:Z

.field static c:Landroid/widget/ListView;

.field static d:Landroid/app/Dialog;

.field public static e:Ljava/lang/String;

.field private static f:Lcom/xingluo/platform/single/util/i;

.field private static g:Landroid/content/Context;

.field private static h:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static i:Z

.field private static j:I

.field private static k:Z

.field private static l:Landroid/widget/AbsListView$OnScrollListener;

.field private static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Z

.field private static o:Lcom/xingluo/platform/single/net/INetListener;

.field private static p:Landroid/widget/AdapterView$OnItemClickListener;

.field private static q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Landroid/widget/BaseAdapter;

.field private static t:Landroid/app/Dialog;

.field private static u:Landroid/widget/LinearLayout;

.field private static v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLPointerGameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/ad/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->f:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->a:Lcom/xingluo/platform/ad/view/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/ad/c/a;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/ad/c/a;->k:Z

    new-instance v0, Lcom/xingluo/platform/ad/c/b;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/c/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->l:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->m:Ljava/util/List;

    new-instance v0, Lcom/xingluo/platform/ad/c/l;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/c/l;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->o:Lcom/xingluo/platform/single/net/INetListener;

    new-instance v0, Lcom/xingluo/platform/ad/c/m;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/c/m;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->p:Landroid/widget/AdapterView$OnItemClickListener;

    const-string v0, "\u6b21\u4e0b\u8f7d    "

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Landroid/content/DialogInterface$OnDismissListener;Lcom/xingluo/platform/ad/pojos/ResultAward;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xingluo/platform/single/util/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const-string v1, "bd_layout_award_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    :goto_0
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    const-string v1, "xl_dialog_linear_content"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "xl_dialog_tv_sendphone_tip"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "xl_dialog_phone_linear"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v7, "xl_dialog_tv_value"

    invoke-static {p0, v7}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    :goto_1
    const-string v1, "xl_dialog_baiduid_linear"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "xl_dialog_tv_value"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->a()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    const-string v1, "xl_dialog_tv_userinfo_tip"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    :goto_3
    const/4 v1, 0x5

    if-le v2, v1, :cond_a

    :cond_2
    :goto_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const-string v1, "xl_suspension_progress_load"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    const-string v1, "xlMainHeadClose"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "xlMainHeadBack"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/xingluo/platform/ad/c/e;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v6, p0}, Lcom/xingluo/platform/ad/c/e;-><init>(Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "xlMainHeadTxt"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "xlMainHeadImage"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "tv_other_text"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    const-string v3, "tv_noaward_text"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    const-string v3, "xl_btn_return_game"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Button;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz p3, :cond_d

    const-string v1, "\u590d\u5236\u5e76\u8fd4\u56de\u6e38\u620f"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_5
    new-instance v1, Lcom/xingluo/platform/ad/c/f;

    move-object/from16 v2, p3

    move-object v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/xingluo/platform/ad/c/f;-><init>(Lcom/xingluo/platform/ad/pojos/ResultAward;Landroid/app/Activity;Ljava/lang/StringBuilder;Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "xl_btn_pointer_game_recommend"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/xingluo/platform/ad/c/g;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/ad/c/g;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "xl_games_scrollview"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    const-string v2, "xl_game_recomend_arrays"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "xl_game_pointer_area_layout"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a()I

    move-result v5

    sget-object v9, Lcom/xingluo/platform/ad/c/a;->f:Lcom/xingluo/platform/single/util/i;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "----------exit flag is = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    if-nez v5, :cond_f

    if-eqz p5, :cond_5

    const-string v4, ""

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const-string v1, "xl_dialog_stub_view"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_7
    return-object v6

    :cond_7
    const-string v1, "xl_layout_award_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "xl_dialog_phone_linear"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    const-string v1, "xl_dialog_baiduid_linear"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x1

    if-ne v2, v1, :cond_c

    const-string v1, "xl_dialog_tv_drawsuccess_tip"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->c()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Lcom/xingluo/platform/ad/pojos/ResultAward;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "xl_dialog_tv_value"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/pojos/ResultAward;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    if-nez p3, :cond_4

    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_6

    :cond_f
    const/4 v9, 0x1

    if-ne v9, v5, :cond_16

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    if-eqz v5, :cond_15

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_15

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    const-string v2, "statistics_single_pointer_game_show"

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const/4 v8, 0x2

    invoke-static {v2, v5, v7, v8}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "game"

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->f()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v2, "xl_layout_pointer_game_style_vertical"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {p0, v7}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "xl_pointer_game_bglayout"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/xingluo/platform/ad/c/h;

    invoke-direct {v4, p0, v1}, Lcom/xingluo/platform/ad/c/h;-><init>(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLPointerGameData;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xingluo/platform/ad/c/i;

    invoke-direct {v8, v3}, Lcom/xingluo/platform/ad/c/i;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_10
    :goto_a
    const-string v3, "xl_game_content_txt"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "xl_btn_download_game"

    invoke-static {p0, v4}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/xingluo/platform/ad/c/j;

    invoke-direct {v4, v1, p0}, Lcom/xingluo/platform/ad/c/j;-><init>(Lcom/xingluo/platform/ad/pojos/XLPointerGameData;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v5, :cond_6

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_11
    if-eqz p5, :cond_12

    const-string v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_12
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v7, v8, v9, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_9

    :cond_14
    const-string v3, "-----isNetConnect is false----"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_15
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    :cond_16
    sget-object v4, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1e

    sget-object v4, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    const/16 v4, 0x50

    :cond_17
    :goto_b
    sget-object v5, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_c
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    int-to-float v1, v4

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v1

    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v1, v3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/xingluo/platform/ad/a/b;

    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-direct {v1, p0, v3}, Lcom/xingluo/platform/ad/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/xingluo/platform/ad/c/k;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/c/k;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_d
    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-lt v2, v4, :cond_1f

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statistics_recommend_game_show"

    const-string v3, ""

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_18
    sget-object v4, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_19

    const/16 v4, 0x50

    goto/16 :goto_b

    :cond_19
    sget-object v4, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1a

    const/16 v4, 0x46

    goto/16 :goto_b

    :cond_1a
    const/16 v4, 0x46

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x4

    if-le v5, v9, :cond_17

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {v5, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    sget-object v9, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    :cond_1b
    if-eqz p5, :cond_1c

    const-string v5, ""

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1e
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1f
    sget-object v1, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "game"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_e

    :cond_20
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public static a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)Landroid/app/Dialog;
    .locals 10

    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "bd_layout_dialog"

    invoke-static {p0, v0}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    move-object v4, v0

    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v0, "xl_suspension_progress_load"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    const-string v0, "xlMainHeadClose"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "xlMainHeadBack"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/ad/c/n;

    invoke-direct {v1, v4}, Lcom/xingluo/platform/ad/c/n;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "xl_dialog_title"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "xl_text_quit_game_confirm_txt"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "xl_btn_pointer_game_recommend"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "xl_btn_quit_game"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/xingluo/platform/ad/c/o;

    invoke-direct {v2, p1, p0}, Lcom/xingluo/platform/ad/c/o;-><init>(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/xingluo/platform/ad/c/p;

    invoke-direct {v2, v0, v4, p2}, Lcom/xingluo/platform/ad/c/p;-><init>(Landroid/widget/Button;Landroid/app/Dialog;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "xl_games_scrollview"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "xl_game_recomend_arrays"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "xl_game_pointer_area_layout"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a()I

    move-result v6

    sget-object v7, Lcom/xingluo/platform/ad/c/a;->f:Lcom/xingluo/platform/single/util/i;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "----------exit flag is = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    if-nez v6, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const-string v0, "xl_dialog_stub_view"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    const-string v0, "xl_layout_dialog"

    invoke-static {p0, v0}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x1

    if-ne v7, v6, :cond_6

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    const-string v1, "statistics_single_pointer_game_show"

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x2

    invoke-static {v1, v6, v7, v8}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "game"

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->f()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v1, "xl_layout_pointer_game_style_vertical"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "xl_pointer_game_bglayout"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/xingluo/platform/ad/c/q;

    invoke-direct {v3, p0, v0}, Lcom/xingluo/platform/ad/c/q;-><init>(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLPointerGameData;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/xingluo/platform/ad/c/r;

    invoke-direct {v7, v2}, Lcom/xingluo/platform/ad/c/r;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_3
    :goto_2
    const-string v2, "xl_game_title_txt"

    invoke-static {p0, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "xl_game_content_txt"

    invoke-static {p0, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "xl_btn_download_game"

    invoke-static {p0, v5}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/xingluo/platform/ad/c/s;

    invoke-direct {v5, v0, p0}, Lcom/xingluo/platform/ad/c/s;-><init>(Lcom/xingluo/platform/ad/pojos/XLPointerGameData;Landroid/app/Activity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "-----isNetConnect is false----"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    if-eqz v3, :cond_c

    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    const/16 v3, 0x50

    :cond_7
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    int-to-float v0, v3

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;F)I

    move-result v0

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v0, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/xingluo/platform/ad/a/b;

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/xingluo/platform/ad/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/xingluo/platform/ad/c/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/c/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v1, v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "statistics_recommend_game_show"

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    const/16 v3, 0x50

    goto/16 :goto_3

    :cond_9
    sget-object v3, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_a

    const/16 v3, 0x46

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x46

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_7

    sget-object v5, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    sget-object v6, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_b
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "game"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_c
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "XL.Theme.NoBackground.NoAnimation"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v1, "xl_new_draw_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "xl_recommend_dialog_style"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {p0, p1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->b(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->c(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xingluo/platform/ad/c/a;->c(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e07"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_0

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u4ebf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/xingluo/platform/ad/c/a;->j:I

    return-void
.end method

.method static synthetic a(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->b(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 0

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->b(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V

    return-void
.end method

.method public static a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V
    .locals 8

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iF:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    if-eqz p1, :cond_1

    const-string v1, "statistics_boutique_download"

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;ZLandroid/content/Context;)V
    .locals 0

    sput-object p2, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/xingluo/platform/ad/c/a;->a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/xingluo/platform/ad/c/a;->i:Z

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "xl_recommend_dialog_style"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method private static b(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_4

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private static b(Landroid/widget/AbsListView;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static b(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xingluo/platform/ad/c/a;->a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lcom/xingluo/platform/ad/c/a;->k:Z

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/ad/c/a;->i:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x2710
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sput-object p0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const-string v1, "xl_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const-string v1, "xl_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const-string v1, "xl_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->h:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget v0, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v1, "bd_exit_good_games_dialog"

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    :goto_0
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v2, "xlMainHeadClose"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v2, "xlMainHeadBack"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/xingluo/platform/ad/c/d;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/c/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v2, "xl_good_game_lv"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->m:Ljava/util/List;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->r()V

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->a()V

    :goto_2
    return-void

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v1, "xl_exit_good_games_dialog"

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->q:Ljava/util/List;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->p()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    sget v2, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v1, v3, v2}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->o:Lcom/xingluo/platform/single/net/INetListener;

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    goto :goto_2
.end method

.method static synthetic d()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "xl_suspension_progress_load"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "statistics_boutique_show"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sput-boolean v3, Lcom/xingluo/platform/ad/c/a;->k:Z

    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/xingluo/platform/ad/c/a;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v0, "xl_payment_error_2003"

    invoke-static {p0, v0}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "xl_dialog_style"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget v1, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v1, v2, :cond_0

    const-string v1, "bd_layout_download_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0

    :cond_0
    const-string v1, "xl_layout_download_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0
.end method

.method static synthetic e()Lcom/xingluo/platform/single/util/i;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->f:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/xingluo/platform/ad/c/a;->j:I

    return v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()Lcom/xingluo/platform/single/net/INetListener;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->o:Lcom/xingluo/platform/single/net/INetListener;

    return-object v0
.end method

.method static synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/ad/c/a;->n:Z

    return v0
.end method

.method static synthetic k()Landroid/widget/BaseAdapter;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->s:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic l()V
    .locals 0

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->r()V

    return-void
.end method

.method static synthetic m()V
    .locals 0

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->q()V

    return-void
.end method

.method static synthetic n()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->h:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic o()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->v:Ljava/util/List;

    return-object v0
.end method

.method private static p()Landroid/app/Dialog;
    .locals 2

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    const-string v1, "xl_suspension_progress_load"

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->t:Landroid/app/Dialog;

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->a(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->d()V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->t:Landroid/app/Dialog;

    return-object v0
.end method

.method private static q()V
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static r()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/ad/c/a;->n:Z

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/c/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xingluo/platform/ad/c/a$d;-><init>(Lcom/xingluo/platform/ad/c/a$d;)V

    sput-object v0, Lcom/xingluo/platform/ad/c/a;->s:Landroid/widget/BaseAdapter;

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->s:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->p:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->l:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->f:Lcom/xingluo/platform/single/util/i;

    const-string v1, "-exit dialog gridView and listView both nil"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
