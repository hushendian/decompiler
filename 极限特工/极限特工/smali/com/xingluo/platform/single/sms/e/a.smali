.class public Lcom/xingluo/platform/single/sms/e/a;
.super Lcom/xingluo/platform/single/pay/b/e;


# static fields
.field private static l:Lcom/xingluo/platform/single/util/i;

.field private static m:Lcom/xingluo/platform/single/sms/e/a;


# instance fields
.field private n:Landroid/view/ViewStub;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/PopupWindow;

.field private v:Lcom/xingluo/platform/single/item/GamePropsInfo;

.field private w:Lcom/xingluo/platform/single/order/Order;

.field private x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private y:Lcom/xingluo/platform/single/pay/ViewType;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sms/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xingluo/platform/single/pay/b/e;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    iput-object p5, p0, Lcom/xingluo/platform/single/sms/e/a;->w:Lcom/xingluo/platform/single/order/Order;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/e/a;->z:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/e/a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)Lcom/xingluo/platform/single/sms/e/a;
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/sms/e/a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/single/sms/e/a;-><init>(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)V

    sput-object v0, Lcom/xingluo/platform/single/sms/e/a;->m:Lcom/xingluo/platform/single/sms/e/a;

    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->m:Lcom/xingluo/platform/single/sms/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/e/a;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/e/a;->u:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/e/a;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->u:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/e/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/e/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/e/a;->y:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initSMSView start view"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v2, "xl_extra_gost_netSwitch"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v2

    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSMSView isGostSwitch And isNetSwitch"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    sget v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/xingluo/platform/single/sms/e/a;->c(Z)V

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSMSView set view mShowView"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v0, "xlPaySMSTip"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->n:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->n:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    const-string v3, "initSMSView inflate view"

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v0, "xlTxtGoodsName"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->o:Landroid/widget/TextView;

    const-string v0, "xlTxtGameName"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->p:Landroid/widget/TextView;

    const-string v0, "xlTxtGoodsPrice"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->q:Landroid/widget/TextView;

    const-string v0, "xlTxtWarning"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->r:Landroid/widget/TextView;

    const-string v0, "xlBtnConfirmPay"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/xingluo/platform/single/util/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v5}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->r:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v5}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "xl_pay_dropdown"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v4, "new_bg_popup1"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/q;->k(Landroid/content/Context;)Lcom/xingluo/platform/single/util/MNCType;

    move-result-object v0

    sget-object v3, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    if-ne v3, v0, :cond_6

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_iv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v4, "pay_sms_cm_icon"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_tv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v5, "xl_payment_sms_cm"

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_arrow_iv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/xingluo/platform/single/sms/e/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/e/b;-><init>(Lcom/xingluo/platform/single/sms/e/a;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    new-instance v4, Lcom/xingluo/platform/single/sms/e/c;

    invoke-direct {v4, p0, v0}, Lcom/xingluo/platform/single/sms/e/c;-><init>(Lcom/xingluo/platform/single/sms/e/a;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_4
    :goto_2
    sget-object v0, Lcom/xingluo/platform/single/sms/e/a;->l:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initSMSView end view"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez v2, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    if-ne v3, v0, :cond_7

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_iv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v4, "pay_sms_ct_icon"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_tv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v5, "xl_payment_sms_ct"

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_iv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v4, "pay_sms_cu_icon"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->t:Landroid/view/View;

    const-string v3, "dropdown_tv"

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/single/sms/e/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v5, "xl_payment_sms_cu"

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_2
.end method

.method public b(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/e/a;->y:Lcom/xingluo/platform/single/pay/ViewType;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/xingluo/platform/single/sms/e/a;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v1, "xl_pay_dialog_pane"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v1, "xl_dialog_tv_main"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "     \u5c0a\u656c\u7684\u7528\u6237,\u60a8\u5373\u5c06\u901a\u8fc7\u8bdd\u8d39\u5bf9\u60a8\u7684\u6e38\u620f\u8d26\u6237\u8fdb\u884c\u5145\u503c,\u4fe1\u606f\u8d39%s\u5143,\u9700\u8981\u53d1\u9001\u4e00\u6761\u77ed\u4fe1,%s\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u5ba2\u670d\u7535\u8bdd:4006555266,\u70b9\u51fb\u786e\u8ba4\u8fdb\u884c\u8d2d\u4e70"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->v:Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v1, "xl_dialog_btn1"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->g:Landroid/content/Context;

    const-string v1, "xl_dialog_btn2"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/e/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->s:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public c(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 3

    invoke-static {}, Lcom/xingluo/platform/single/util/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->w:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {p2, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xlsdk sms union paychannel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/b;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/e/a;->i()I

    move-result v2

    invoke-virtual {v0, p3, v1, p2, v2}, Lcom/xingluo/platform/single/sms/pay/b;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/xingluo/platform/single/util/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/e/a;->w:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/order/Order;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->showProgressDialog(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xlsdk sms union paychannel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/b;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/e/a;->y:Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v2, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/e/a;->x:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/e/a;->i()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/single/sms/pay/b;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0
.end method
