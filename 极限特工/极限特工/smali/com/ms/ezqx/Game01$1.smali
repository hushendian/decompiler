.class Lcom/ms/ezqx/Game01$1;
.super Ljava/lang/Object;
.source "Game01.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ms/ezqx/Game01;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ms/ezqx/Game01;


# direct methods
.method constructor <init>(Lcom/ms/ezqx/Game01;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ms/ezqx/Game01$1;->this$0:Lcom/ms/ezqx/Game01;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "te":Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    .line 58
    .local v0, "esd":I
    sget v2, Lcom/ms/ezqx/Game01;->num:I

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 61
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    goto :goto_0

    #.line 64
    #:pswitch_1
    #new-instance v2, Ljava/lang/StringBuilder;

    #const-string v3, "success,"

    #invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #move-result-object v2

    #invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #move-result-object v2

    #invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    #goto :goto_0

    .line 67
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
       # :pswitch_2
    .end packed-switch
.end method
