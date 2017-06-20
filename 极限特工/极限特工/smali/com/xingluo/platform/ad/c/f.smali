.class Lcom/xingluo/platform/ad/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/xingluo/platform/ad/pojos/ResultAward;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/StringBuilder;

.field private final synthetic d:Landroid/content/DialogInterface$OnDismissListener;

.field private final synthetic e:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/pojos/ResultAward;Landroid/app/Activity;Ljava/lang/StringBuilder;Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/f;->a:Lcom/xingluo/platform/ad/pojos/ResultAward;

    iput-object p2, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xingluo/platform/ad/c/f;->c:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/xingluo/platform/ad/c/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p5, p0, Lcom/xingluo/platform/ad/c/f;->e:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xingluo/platform/ad/b/a;->a()Lcom/xingluo/platform/ad/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->a:Lcom/xingluo/platform/ad/pojos/ResultAward;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/f;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    const-string v1, "\u62bd\u5956\u4fe1\u606f\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/f;->c:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    const-string v1, "\u62bd\u5956\u4fe1\u606f\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/f;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
