.class public Lorg/codeaurora/ims/QtiImsExtService;
.super Landroid/app/Service;
.source "QtiImsExtService.java"


# instance fields
.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createQtiImsExt()V
    .locals 2

    .line 31
    invoke-static {}, Lorg/codeaurora/ims/ImsService;->getServiceSubs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lorg/codeaurora/ims/QtiImsExt;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 35
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->startImsService()V

    return-void

    .line 37
    :cond_0
    const-string v0, "QtiImsExtService, ImsService is not yet started retry."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private startImsService()V
    .locals 2

    .line 42
    const-string v0, "startImsService:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/codeaurora/ims/ImsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/QtiImsExtService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopImsService()V
    .locals 2

    .line 47
    const-string v0, "stopImsService:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/codeaurora/ims/ImsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/QtiImsExtService;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez p1, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    .line 57
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez p1, :cond_1

    .line 58
    const-string p1, "onBind returned null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    const-string v0, "QtiImsExtService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    const-string v0, "onDestroy:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 68
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->stopImsService()V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
