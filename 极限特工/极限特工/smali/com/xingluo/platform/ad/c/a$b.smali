.class Lcom/xingluo/platform/ad/c/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/c/a$b;->a:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/a$b;->a:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/a$b;->a:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/c/a;->a(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    :cond_0
    return-void
.end method
