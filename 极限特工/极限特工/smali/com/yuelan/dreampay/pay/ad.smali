.class final Lcom/yuelan/dreampay/pay/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showExitDialogTime:Ljava/lang/String;

    return-void
.end method
