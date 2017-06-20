.class Lcom/xingluo/platform/ad/view/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/view/a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/view/a;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/view/a$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/view/a;Lcom/xingluo/platform/ad/view/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/view/a$b;-><init>(Lcom/xingluo/platform/ad/view/a;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0, p1}, Lcom/xingluo/platform/ad/view/a;->a(Lcom/xingluo/platform/ad/view/a;I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->e(Lcom/xingluo/platform/ad/view/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->e(Lcom/xingluo/platform/ad/view/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->e(Lcom/xingluo/platform/ad/view/a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/ad/view/a$b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/a;->f(Lcom/xingluo/platform/ad/view/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xl_suspension_item_circle_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->e(Lcom/xingluo/platform/ad/view/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/a$b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/a;->f(Lcom/xingluo/platform/ad/view/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xl_suspension_item_circle_select"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iput p1, p0, Lcom/xingluo/platform/ad/view/a$b;->b:I

    return-void
.end method
