.class final Lcom/yuelan/codelib/download/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/codelib/download/a;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/yuelan/codelib/download/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/b;->a:Lcom/yuelan/codelib/download/a;

    iput-object p2, p0, Lcom/yuelan/codelib/download/b;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/yuelan/codelib/download/b;->b:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yuelan/codelib/download/b;->a:Lcom/yuelan/codelib/download/a;

    invoke-static {v0}, Lcom/yuelan/codelib/download/a;->a(Lcom/yuelan/codelib/download/a;)Lcom/yuelan/codelib/download/DownLoadService;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/codelib/download/b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/download/DownLoadService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
