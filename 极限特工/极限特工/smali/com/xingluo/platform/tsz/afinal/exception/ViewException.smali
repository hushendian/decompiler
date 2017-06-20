.class public Lcom/xingluo/platform/tsz/afinal/exception/ViewException;
.super Lcom/xingluo/platform/tsz/afinal/exception/AfinalException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private strMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/exception/AfinalException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/exception/ViewException;->strMsg:Ljava/lang/String;

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/exception/ViewException;->strMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/exception/ViewException;->strMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/exception/ViewException;->strMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/xingluo/platform/tsz/afinal/exception/AfinalException;->printStackTrace()V

    return-void
.end method
