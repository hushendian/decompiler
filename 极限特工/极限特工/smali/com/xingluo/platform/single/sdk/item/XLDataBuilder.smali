.class public Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
.super Ljava/lang/Object;


# instance fields
.field private xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

.field private xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

.field private xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

.field private xlctegameData:Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;

.field private xlwostoreSDKData:Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setXLCMGBData(Lcom/xingluo/platform/single/sdk/item/XLCMGBData;)Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    return-object p0
.end method

.method public setXLCMMMData(Lcom/xingluo/platform/single/sdk/item/XLCMMMData;)Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    return-object p0
.end method

.method public setXLCMMdoData(Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;)Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    return-object p0
.end method

.method public setXLCTEGAMEData(Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;)Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlctegameData:Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;

    return-object p0
.end method

.method public setXLWOSTOREData(Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;)Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlwostoreSDKData:Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;

    return-object p0
.end method

.method public toBuild()Lcom/xingluo/platform/single/pay/data/XLAllParams;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;-><init>()V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setPropsId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getDest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setDest(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getChannelNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setChannelNum(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmMdoData:Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMdoData;->getMdoLength()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setMdoLength(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setMdoData(Z)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setGameName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getCpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCpName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getCpServerNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCpServerNum(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isUserSms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setUserSms(Z)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->isRepeated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setRepeated(Z)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getPropsType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setPropsType(I)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getBillingIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setBillingIndex(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmgbData:Lcom/xingluo/platform/single/sdk/item/XLCMGBData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMGBData;->getCpParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCpParam(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setGBData(Z)V

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMMData;->getMMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setMMid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMMData;->getMMkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setMMkey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMMData;->getPaycode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setPaycode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMMData;->getUserdata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setUserdata(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlcmmmData:Lcom/xingluo/platform/single/sdk/item/XLCMMMData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCMMMData;->getSKIN()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setSKIN(I)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setMMdata(Z)V

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlctegameData:Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlctegameData:Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->getToolsAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setToolsAlias(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlctegameData:Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->getToolsDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setToolsDesc(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCTEGame(Z)V

    :cond_3
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlwostoreSDKData:Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->xlwostoreSDKData:Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;->getBuyIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setBuyIndex(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->setCUWOGame(Z)V

    :cond_4
    return-object v0
.end method
