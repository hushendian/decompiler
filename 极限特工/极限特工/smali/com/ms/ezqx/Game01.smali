.class public Lcom/ms/ezqx/Game01;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "Game01.java"


# static fields
.field public static context:Landroid/content/Context;

.field public static fishActivity:Landroid/app/Activity;

.field private static mHandler:Landroid/os/Handler;

.field public static money:Ljava/lang/String;

.field private static name:Ljava/lang/String;

.field static num:I

.field private static payId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/ms/ezqx/Game01;->num:I

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    .line 36
    const-string v0, "game2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method

.method public static aaa(Ljava/lang/String;I)V
    .locals 2
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
	.line 62
    invoke-static {p0, p1}, Lcom/ms/ezqx/Game01;->gerw(Ljava/lang/String;I)V
   # .line 57
    #new-instance v0, Ljava/lang/StringBuilder;

    #const-string v1, "success,"

    #invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #move-result-object v0

    #invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    #move-result-object v0
	#invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I
    #.line 204
    #new-instance v0, Landroid/os/Message;

    #invoke-direct {v0}, Landroid/os/Message;-><init>()V

    #.line 205
    #.local v0, "msg":Landroid/os/Message;
    #iput p1, v0, Landroid/os/Message;->what:I

    #.line 206
    #iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #.line 207
    #const/4 v1, 0x1

    #sput v1, Lcom/ms/ezqx/Game01;->num:I

    #.line 208
   # sget-object v1, Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;

  #  invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static egta(Ljava/lang/String;I)V
    .locals 5
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    .line 91
  #  invoke-static {p0}, Lcom/ms/ezqx/Game01;->gerw(Ljava/lang/String;)V

    .line 94
    const-string v2, "10"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 97
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    const/4 v2, 0x2

    sput v2, Lcom/ms/ezqx/Game01;->num:I

    .line 99
    sget-object v2, Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    sget-object v2, Lcom/ms/ezqx/Game01;->fishActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;-><init>(Landroid/app/Activity;)V

    .line 104
    .local v0, "dreamPay":Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    new-instance v2, Lcom/ms/ezqx/Game01$2;

    invoke-direct {v2, p1, p0}, Lcom/ms/ezqx/Game01$2;-><init>(ILjava/lang/String;)V

    .line 146
    sget-object v3, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v0, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->Pay(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gerw(Ljava/lang/String;I)V
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    .line 66
    move-object v0, p0

    .line 67
    .local v0, "a":Ljava/lang/String;
    move v4, p1

    .line 68
    .local v4, "i":I
    const-string v5, "1"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const-string v5, "\u653b\u51fb\u6ee1\u7ea7"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 70
    const-string v5, "6197"  
    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 71
    const-string v5, "8"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    .line 109
    :cond_0
    :goto_0
    new-instance v3, Lcom/xingluo/platform/single/item/GamePropsInfo;

    sget-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    sget-object v6, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    sget-object v7, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 110
    const-string v8, "45805555"

    .line 109
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/xingluo/platform/single/item/GamePropsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v3, "gamePropsInfo":Lcom/xingluo/platform/single/item/GamePropsInfo;
    new-instance v2, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;-><init>()V

    .line 112
    .local v2, "databuilder":Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    invoke-virtual {v2}, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->toBuild()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v1

    .line 113
    .local v1, "allParams":Lcom/xingluo/platform/single/pay/data/XLAllParams;
    sget-object v5, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/xingluo/platform/single/item/GamePropsInfo;->setThirdPay(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v5

    sget-object v6, Lcom/ms/ezqx/Game01;->fishActivity:Landroid/app/Activity;

    .line 115
    new-instance v7, Lcom/ms/ezqx/Game01$4;

    invoke-direct {v7, v4, v0}, Lcom/ms/ezqx/Game01$4;-><init>(ILjava/lang/String;)V

    .line 114
    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->pay(Landroid/app/Activity;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    .line 142
    return-void

    .line 72
    .end local v1    # "allParams":Lcom/xingluo/platform/single/pay/data/XLAllParams;
    .end local v2    # "databuilder":Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    .end local v3    # "gamePropsInfo":Lcom/xingluo/platform/single/item/GamePropsInfo;
    :cond_1
    const-string v5, "2"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string v5, "\u5fc5\u6740\u6ee1\u7ea7"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 74
    const-string v5, "6200"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 75
    const-string v5, "6"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    const-string v5, "3"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    const-string v5, "\u751f\u547d\u6ee1\u7ea7"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 78
    const-string v5, "6198"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 79
    const-string v5, "8"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_3
    const-string v5, "4"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-string v5, "\u76df\u53cb\u6ee1\u7ea7"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 82
    const-string v5, "6199"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 83
    const-string v5, "7"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_4
    const-string v5, "5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    const-string v5, "25000\u91d1\u5e01"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 86
    const-string v5, "6203"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 87
    const-string v5, "5"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_5
    const-string v5, "6"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    const-string v5, "50000\u91d1\u5e01"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 90
    const-string v5, "6202"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 91
    const-string v5, "10"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :cond_6
    const-string v5, "7"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 93
    const-string v5, "100000\u91d1\u5e01"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 94
    const-string v5, "6201"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 95
    const-string v5, "20"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_7
    const-string v5, "8"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 97
    const-string v5, "\u793c\u5305"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 98
    const-string v5, "6204"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 99
    const-string v5, "8"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :cond_8
    const-string v5, "9"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 101
    const-string v5, "\u539f\u5730\u590d\u6d3b"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 102
    const-string v5, "6205"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 103
    const-string v5, "2"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    :cond_9
    const-string v5, "11"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const-string v5, "\u5feb\u901f\u8fc7\u5173"

    sput-object v5, Lcom/ms/ezqx/Game01;->name:Ljava/lang/String;

    .line 106
    const-string v5, "6206"

    sput-object v5, Lcom/ms/ezqx/Game01;->payId:Ljava/lang/String;

    .line 107
    const-string v5, "3"

    sput-object v5, Lcom/ms/ezqx/Game01;->money:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x80

    .line 41
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/ms/ezqx/Game01;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    sput-object p0, Lcom/ms/ezqx/Game01;->fishActivity:Landroid/app/Activity;

    .line 45
    sput-object p0, Lcom/ms/ezqx/Game01;->context:Landroid/content/Context;
	.line 31
    invoke-virtual {p0}, Lcom/ms/ezqx/Game01;->initSdk()V
    .line 52
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/ms/ezqx/Game01$1;

    invoke-direct {v1, p0}, Lcom/ms/ezqx/Game01$1;-><init>(Lcom/ms/ezqx/Game01;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 214
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 236
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 242
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 89
    return-void
.end method
.method public initSdk()V
    .locals 5

    .prologue
    .line 44
    new-instance v1, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;

    invoke-direct {v1}, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;-><init>()V

    .line 46
    .local v1, "databuilder":Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;
    invoke-virtual {v1}, Lcom/xingluo/platform/single/sdk/item/XLDataBuilder;->toBuild()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v0

    .line 49
    .local v0, "allParams":Lcom/xingluo/platform/single/pay/data/XLAllParams;
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    new-instance v4, Lcom/ms/ezqx/Game01$3;

    invoke-direct {v4, p0}, Lcom/ms/ezqx/Game01$3;-><init>(Lcom/ms/ezqx/Game01;)V

    .line 49
    invoke-virtual {v2, p0, v3, v0, v4}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->init(Landroid/app/Activity;ZLcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V

    .line 58
    return-void
.end method