.class Lcom/ms/ezqx/Game01$4;
.super Ljava/lang/Object;
.source "Game01.java"

# interfaces
.implements Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ms/ezqx/Game01;->gerw(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$a:Ljava/lang/String;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/ms/ezqx/Game01$4;->val$i:I

    iput-object p2, p0, Lcom/ms/ezqx/Game01$4;->val$a:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "function_status_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, "mStatusCode":I
    const/16 v3, 0xbc2

    if-ne v2, v3, :cond_0

    .line 127
    iget v3, p0, Lcom/ms/ezqx/Game01$4;->val$i:I

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "success,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ms/ezqx/Game01$4;->val$a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    .line 139
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mStatusCode":I
    :goto_0
    return-void

    .line 131
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "mStatusCode":I
    :cond_0
    iget v3, p0, Lcom/ms/ezqx/Game01$4;->val$i:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/ms/ezqx/Game01$4;->val$a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v3, v4}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mStatusCode":I
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
