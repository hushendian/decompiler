.class Lcom/xingluo/platform/ad/XLInitAdsManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/XLInitAdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/xingluo/platform/ad/XLInitAdsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xingluo/platform/ad/XLInitAdsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;-><init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V

    sput-object v0, Lcom/xingluo/platform/ad/XLInitAdsManager$a;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
