.class public Lorg/codeaurora/ims/CrsCrbtControllerImpl;
.super Lorg/codeaurora/ims/CrsCrbtControllerBase;
.source "CrsCrbtControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    }
.end annotation


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClients(Lorg/codeaurora/ims/CrsCrbtControllerImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/CrsCrbtControllerBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 71
    iput-object p2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 136
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method


# virtual methods
.method public onIsPreparatorySession(Ljava/lang/String;)Z
    .locals 0

    .line 129
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isPreparatorySession(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onRemoveCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 105
    const-string p1, "onRemoveCrsCrbtListener : listener is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 112
    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSendSipDtmf(Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    const-string p1, "onSendSipDtmf : no incoming/outgoing call is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendSipDtmf(Ljava/lang/String;)V

    return-void
.end method

.method public onSetCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "onSetCrsCrbtListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 80
    const-string p1, "onSetCrsCrbtListener : listener is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    const-string p1, "onSetCrsCrbtListener : no incoming/outgoing call is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 93
    iget-object v3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    new-instance v2, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    invoke-direct {v2, p0, p1, v0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;-><init>(Lorg/codeaurora/ims/CrsCrbtControllerImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 96
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->linkToDeath()V

    .line 97
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    .line 98
    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
