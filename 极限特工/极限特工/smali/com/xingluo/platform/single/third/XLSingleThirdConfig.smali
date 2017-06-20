.class public Lcom/xingluo/platform/single/third/XLSingleThirdConfig;
.super Ljava/lang/Object;


# static fields
.field public static ALIPAY:Ljava/lang/String;

.field public static ALL:Ljava/lang/String;

.field public static WEIXIN:Ljava/lang/String;

.field public static WEIXIN2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "alipay"

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALIPAY:Ljava/lang/String;

    const-string v0, "tencentmm"

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    const-string v0, "webpay"

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN2:Ljava/lang/String;

    const-string v0, "all"

    sput-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
