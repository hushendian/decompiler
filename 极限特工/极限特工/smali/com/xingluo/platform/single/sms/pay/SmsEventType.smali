.class public final enum Lcom/xingluo/platform/single/sms/pay/SmsEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/sms/pay/SmsEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

.field private static final synthetic b:[Lcom/xingluo/platform/single/sms/pay/SmsEventType;


# instance fields
.field private final factory:Lcom/xingluo/platform/single/pay/listener/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    const-string v1, "ET_ConfirmSendSMS"

    new-instance v2, Lcom/xingluo/platform/single/sms/pay/a;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sms/pay/a;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/xingluo/platform/single/sms/pay/SmsEventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    sget-object v1, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->a:Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->b:[Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/sms/pay/SmsEventType;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    return-object v0
.end method

.method public static b()[Lcom/xingluo/platform/single/sms/pay/SmsEventType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->b:[Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/sms/pay/SmsEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/xingluo/platform/single/pay/listener/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/SmsEventType;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-object v0
.end method
