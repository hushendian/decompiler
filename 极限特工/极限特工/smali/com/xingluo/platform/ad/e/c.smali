.class Lcom/xingluo/platform/ad/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/e/a;

.field private final synthetic b:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/e/a;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/e/c;->a:Lcom/xingluo/platform/ad/e/a;

    iput-object p2, p0, Lcom/xingluo/platform/ad/e/c;->b:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/c;->a:Lcom/xingluo/platform/ad/e/a;

    iget-object v1, p0, Lcom/xingluo/platform/ad/e/c;->b:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->k()Lcom/xingluo/platform/single/item/LogoInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/e/a;->a(Lcom/xingluo/platform/ad/e/a;Lcom/xingluo/platform/single/item/LogoInfo;)V

    return-void
.end method
