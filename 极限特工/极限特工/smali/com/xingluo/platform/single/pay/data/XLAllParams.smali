.class public Lcom/xingluo/platform/single/pay/data/XLAllParams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SKIN_SYSTEM_ONE:I = 0x1

.field public static final SKIN_SYSTEM_THREE:I = 0x3

.field public static final SKIN_SYSTEM_TWO:I = 0x2

.field private static isCardgameFlag:Z = false

.field private static final serialVersionUID:J = -0x4b3d9109849bbb2fL


# instance fields
.field private MMid:Ljava/lang/String;

.field private MMkey:Ljava/lang/String;

.field private MdoLength:Ljava/lang/String;

.field private SKIN:I

.field private ToolsAlias:Ljava/lang/String;

.field private ToolsDesc:Ljava/lang/String;

.field private billingIndex:Ljava/lang/String;

.field private buyIndex:Ljava/lang/String;

.field private channelNum:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private cpName:Ljava/lang/String;

.field private cpParam:Ljava/lang/String;

.field private cpServerNum:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private isCTEGame:Z

.field private isGBData:Z

.field private isMMdata:Z

.field private isMdoData:Z

.field private isRepeated:Z

.field private isWOGame:Z

.field paramsType:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paycode:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private propsId:Ljava/lang/String;

.field private propsType:I

.field private userSms:Z

.field private userdata:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->paramsType:Ljava/util/Collection;

    iput-boolean v1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userSms:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->propsType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->SKIN:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->paycode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userdata:Ljava/lang/String;

    return-void
.end method

.method public static isCardgameFlag()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag:Z

    return v0
.end method

.method public static setCardgameFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag:Z

    return-void
.end method


# virtual methods
.method public getBillingIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->billingIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->buyIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpName:Ljava/lang/String;

    return-object v0
.end method

.method public getCpParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpParam:Ljava/lang/String;

    return-object v0
.end method

.method public getCpServerNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpServerNum:Ljava/lang/String;

    return-object v0
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getMMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MMid:Ljava/lang/String;

    return-object v0
.end method

.method public getMMkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MMkey:Ljava/lang/String;

    return-object v0
.end method

.method public getMdoLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MdoLength:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsType()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->paramsType:Ljava/util/Collection;

    return-object v0
.end method

.method public getPaycode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->paycode:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->propsId:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsType()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->propsType:I

    return v0
.end method

.method public getSKIN()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->SKIN:I

    return v0
.end method

.method public getToolsAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->ToolsAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getToolsDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->ToolsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public isCTEGame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCTEGame:Z

    return v0
.end method

.method public isCUWOGame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isWOGame:Z

    return v0
.end method

.method public isGBData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isGBData:Z

    return v0
.end method

.method public isMMdata()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMMdata:Z

    return v0
.end method

.method public isMdoData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMdoData:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated:Z

    return v0
.end method

.method public isUserSms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userSms:Z

    return v0
.end method

.method public setBillingIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->billingIndex:Ljava/lang/String;

    return-void
.end method

.method public setBuyIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->buyIndex:Ljava/lang/String;

    return-void
.end method

.method public setCTEGame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCTEGame:Z

    return-void
.end method

.method public setCUWOGame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isWOGame:Z

    return-void
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->code:Ljava/lang/String;

    return-void
.end method

.method public setCpName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpName:Ljava/lang/String;

    return-void
.end method

.method public setCpParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpParam:Ljava/lang/String;

    return-void
.end method

.method public setCpServerNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->cpServerNum:Ljava/lang/String;

    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->dest:Ljava/lang/String;

    return-void
.end method

.method public setGBData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isGBData:Z

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setMMdata(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMMdata:Z

    return-void
.end method

.method public setMMid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MMid:Ljava/lang/String;

    return-void
.end method

.method public setMMkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MMkey:Ljava/lang/String;

    return-void
.end method

.method public setMdoData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMdoData:Z

    return-void
.end method

.method public setMdoLength(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->MdoLength:Ljava/lang/String;

    return-void
.end method

.method public setPaycode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->paycode:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->price:Ljava/lang/String;

    return-void
.end method

.method public setPropsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->propsId:Ljava/lang/String;

    return-void
.end method

.method public setPropsType(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->propsType:I

    return-void
.end method

.method public setRepeated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isRepeated:Z

    return-void
.end method

.method public setSKIN(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->SKIN:I

    return-void
.end method

.method public setToolsAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->ToolsAlias:Ljava/lang/String;

    return-void
.end method

.method public setToolsDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->ToolsDesc:Ljava/lang/String;

    return-void
.end method

.method public setUserSms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userSms:Z

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLAllParams;->userdata:Ljava/lang/String;

    return-void
.end method
