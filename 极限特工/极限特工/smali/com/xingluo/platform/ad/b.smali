.class Lcom/xingluo/platform/ad/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/gameplus/a/a/a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/XLInitAdsManager;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/XLInitAdsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/b;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;)V
    .locals 3

    # getter for: Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;
    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->access$0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xingluo/platform/single/util/y;->f:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->k:Ljava/lang/String;

    # getter for: Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;
    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->access$0()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/b;->a:Lcom/xingluo/platform/ad/XLInitAdsManager;

    # getter for: Lcom/xingluo/platform/ad/XLInitAdsManager;->downloadedInfoList:Ljava/util/List;
    invoke-static {}, Lcom/xingluo/platform/ad/XLInitAdsManager;->access$0()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/xingluo/platform/ad/XLInitAdsManager;->addDesktopIcon(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/XLInitAdsManager;->access$1(Lcom/xingluo/platform/ad/XLInitAdsManager;Ljava/util/List;)V

    :cond_0
    return-void
.end method
