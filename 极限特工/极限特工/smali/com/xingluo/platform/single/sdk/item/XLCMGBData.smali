.class public Lcom/xingluo/platform/single/sdk/item/XLCMGBData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private billingIndex:Ljava/lang/String;

.field private cpName:Ljava/lang/String;

.field private cpParam:Ljava/lang/String;

.field private cpServerNum:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private isRepeated:Z

.field private propsType:I

.field private userSms:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->billingIndex:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->gameName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpServerNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    iput-boolean p2, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    iput p3, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    iput-object p4, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->billingIndex:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBillingIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->billingIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getCpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpName:Ljava/lang/String;

    return-object v0
.end method

.method public getCpParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpParam:Ljava/lang/String;

    return-object v0
.end method

.method public getCpServerNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpServerNum:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsType()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    return v0
.end method

.method public isUserSms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    return v0
.end method

.method public setBillingIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->billingIndex:Ljava/lang/String;

    return-void
.end method

.method public setCpName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpName:Ljava/lang/String;

    return-void
.end method

.method public setCpParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpParam:Ljava/lang/String;

    return-void
.end method

.method public setCpServerNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpServerNum:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setPropsType(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    return-void
.end method

.method public setRepeated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    return-void
.end method

.method public setUserSms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XLCMGBData [gameName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpServerNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpServerNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->userSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRepeated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", propsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->propsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billingIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->billingIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->cpParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
