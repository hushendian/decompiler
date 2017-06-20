.class public Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;
.super Ljava/lang/Object;


# static fields
.field public static AD_SUPPORT:Z

.field public static CHINAMOBILE_IS_SUPPORT:Z

.field public static CHINATELE_IS_SUPPORT:Z

.field public static CHINAUNICOM_IS_SUPPORT:Z

.field public static CROSSRECOMMEND_INIT_FINSIH:Z

.field public static GAMEBASE_SDK_INIT_IS_OK:Z

.field public static GHOST_IS_SUPPORT:Z

.field public static HD:Z

.field public static ISINPUT:Z

.field public static MNC:Lcom/xingluo/platform/single/util/MNCType;

.field public static MOBILE_MM_INIT_IS_OK:Z

.field public static OTHERPAY_IS_SUPPORT:Z

.field public static PAY_SDK_SUPPORT:Z

.field public static PAY_SMS_SUPPORT:Z

.field public static PAY_THIRD_SUPPORT:Z

.field public static PHONE_UA:Ljava/lang/String;

.field public static SCREEN_ORIENT:I

.field public static SDK_APPID:Ljava/lang/String;

.field public static SDK_APPKEY:Ljava/lang/String;

.field public static SDK_APPSECRET:Ljava/lang/String;

.field public static SDK_CHANNELID:Ljava/lang/String;

.field public static SDK_GHOST:Ljava/lang/String;

.field public static SDK_PAY_CHANNEL:Ljava/lang/String;

.field public static THIRD_PAY_TYPE:Ljava/lang/String;

.field public static UPDATA_SUPPORT:Z

.field public static WOSTORE_SDK_INIT_IS_OK:Z

.field public static mdohd:Z

.field public static strPhoneIdentity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_GHOST:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PHONE_UA:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->strPhoneIdentity:Ljava/lang/String;

    const/16 v0, 0x3e7

    sput v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GAMEBASE_SDK_INIT_IS_OK:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->WOSTORE_SDK_INIT_IS_OK:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINATELE_IS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINAMOBILE_IS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->CHINAUNICOM_IS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->OTHERPAY_IS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->ISINPUT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_THIRD_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SDK_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->AD_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->UPDATA_SUPPORT:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->mdohd:Z

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->HD:Z

    const-string v0, "ThirdPay"

    sput-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->THIRD_PAY_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Appid,Appkey,Appsecret can not be null or blank."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-object p1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    sput-object p2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    sput-object p3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    sput-object p4, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    return-void
.end method
