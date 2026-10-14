.class public Lorg/codeaurora/ims/ImsArControllerImpl;
.super Lorg/codeaurora/ims/ImsArControllerBase;
.source "ImsArControllerImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private volatile mListener:Lorg/codeaurora/ims/internal/IImsArListener;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$monClientDeath(Lorg/codeaurora/ims/ImsArControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsArControllerImpl;->onClientDeath()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsArControllerBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 25
    new-instance v0, Lorg/codeaurora/ims/ImsArControllerImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsArControllerImpl$1;-><init>(Lorg/codeaurora/ims/ImsArControllerImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 34
    iput-object p1, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 35
    iput-object p2, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getArSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 92
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v0, "getArSession no call is available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 97
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method private onClientDeath()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mListener:Lorg/codeaurora/ims/internal/IImsArListener;

    return-void
.end method


# virtual methods
.method public onEnableArMode(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsArControllerImpl;->getArSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    const-string p1, "enableArMode: no call is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->enableArMode(Ljava/lang/String;)V

    return-void
.end method

.method public onSetListener(Lorg/codeaurora/ims/internal/IImsArListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsArControllerImpl;->getArSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    const-string p1, "onSetArListener: no call is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mListener:Lorg/codeaurora/ims/internal/IImsArListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v1}, Lorg/codeaurora/ims/internal/IImsArListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 55
    iget-object v3, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Lorg/codeaurora/ims/internal/IImsArListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "Trying to set a NULL listener."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsArControllerImpl;->mListener:Lorg/codeaurora/ims/internal/IImsArListener;

    .line 67
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setArListener(Lorg/codeaurora/ims/internal/IImsArListener;)V

    return-void
.end method

.method public onSetLocalRenderingDelay(I)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsArControllerImpl;->getArSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    const-string p1, "onSetLocalRenderingDelay no call is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalRenderingDelay(I)V

    return-void
.end method
