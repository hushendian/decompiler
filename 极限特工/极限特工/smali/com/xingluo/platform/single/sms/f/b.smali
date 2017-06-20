.class public Lcom/xingluo/platform/single/sms/f/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GameProps"

    sput-object v0, Lcom/xingluo/platform/single/sms/f/b;->a:Ljava/lang/String;

    const-string v0, "order"

    sput-object v0, Lcom/xingluo/platform/single/sms/f/b;->b:Ljava/lang/String;

    const-string v0, "smsPayType"

    sput-object v0, Lcom/xingluo/platform/single/sms/f/b;->c:Ljava/lang/String;

    const-string v0, "unionPay"

    sput-object v0, Lcom/xingluo/platform/single/sms/f/b;->d:Ljava/lang/String;

    const-string v0, "shortPay"

    sput-object v0, Lcom/xingluo/platform/single/sms/f/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
