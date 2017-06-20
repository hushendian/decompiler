.class Lcom/xingluo/platform/single/sms/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/xingluo/platform/single/sms/c/b;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/c/b;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/f/i;->a:Lcom/xingluo/platform/single/sms/c/b;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/f/i;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/f/i;->a:Lcom/xingluo/platform/single/sms/c/b;

    invoke-interface {v0}, Lcom/xingluo/platform/single/sms/c/b;->a()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/f/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
