.class Lcom/xingluo/platform/single/sms/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/EditText;

.field private final synthetic b:Lcom/xingluo/platform/single/sms/c/b;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/xingluo/platform/single/sms/c/b;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/f/h;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/f/h;->b:Lcom/xingluo/platform/single/sms/c/b;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/f/h;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/f/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/sms/f/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/f/h;->b:Lcom/xingluo/platform/single/sms/c/b;

    sget-object v1, Lcom/xingluo/platform/single/sms/f/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/f/h;->c:Landroid/app/Dialog;

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/sms/c/b;->a(Ljava/lang/String;Landroid/app/Dialog;)V

    return-void
.end method
