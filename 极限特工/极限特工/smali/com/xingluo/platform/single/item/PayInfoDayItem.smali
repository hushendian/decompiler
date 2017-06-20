.class public Lcom/xingluo/platform/single/item/PayInfoDayItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x19f212d0217eda37L


# instance fields
.field private payChannel:Ljava/lang/String;

.field private payDate:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payNumber:Ljava/lang/String;

.field private payOperator:Ljava/lang/String;

.field private payPhone:Ljava/lang/String;

.field private payUdid:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payDate:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payChannel:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payPhone:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payUdid:Ljava/lang/String;

    iput-object p6, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payOperator:Ljava/lang/String;

    iput-object p7, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payMoney:Ljava/lang/String;

    iput p8, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->price:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payDate:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->price:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payDate:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payChannel:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payNumber:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payNumber:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payPhone:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payPhone:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payUdid:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payUdid:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payOperator:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payOperator:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payMoney:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->payMoney:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/item/PayInfoDayItem;->price:I

    return v0
.end method
