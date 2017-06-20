.class public abstract Lcom/xingluo/platform/single/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static j:Z


# instance fields
.field private a:Z

.field protected e:Lcom/xingluo/platform/single/pay/ViewType;

.field protected f:Landroid/view/ViewGroup;

.field protected g:Landroid/content/Context;

.field protected h:Z

.field protected i:Z

.field protected k:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/single/view/a;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->h:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->a:Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/view/a;->a()V

    iput-object p1, p0, Lcom/xingluo/platform/single/view/a;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/view/a;->f()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public abstract a(Lcom/xingluo/platform/single/pay/EventType;I)V
.end method

.method public abstract a(Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/view/a;->h:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/view/a;->i:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    sput-boolean p1, Lcom/xingluo/platform/single/view/a;->j:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/view/a;->a:Z

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Lcom/xingluo/platform/single/pay/ViewType;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/a;->e:Lcom/xingluo/platform/single/pay/ViewType;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/a;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->h:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->i:Z

    return v0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/view/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/view/c;->b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    sget-boolean v1, Lcom/xingluo/platform/single/view/a;->j:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/view/c;->a(Z)Lcom/xingluo/platform/single/view/c;

    sget-boolean v0, Lcom/xingluo/platform/single/view/a;->j:Z

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/view/a;->a:Z

    return v0
.end method
