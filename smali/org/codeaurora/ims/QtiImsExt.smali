.class public Lorg/codeaurora/ims/QtiImsExt;
.super Lorg/codeaurora/ims/QtiImsExtBase;
.source "QtiImsExt.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceSub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected isDeactivateAllCallBarringSupported(I)Z
    .locals 0

    .line 265
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isDeactivateAllCallBarringSupported()Z

    move-result p0

    return p0
.end method

.method protected onExitScbm(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->exitScbm(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetArController(I)Lorg/codeaurora/ims/internal/IImsArController;
    .locals 0

    .line 247
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getArController()Lorg/codeaurora/ims/ImsArControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsArControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsArController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetCrsCrbtController(I)Lorg/codeaurora/ims/internal/ICrsCrbtController;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCrsCrbtController()Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsCrbtControllerBase;->getBinder()Lorg/codeaurora/ims/internal/ICrsCrbtController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetImsFeatureState(I)I
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsFeatureState()I

    move-result p0

    return p0
.end method

.method protected onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 2

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 145
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetRcsAppConfig :: Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected onGetScreenShareController(I)Lorg/codeaurora/ims/internal/IImsScreenShareController;
    .locals 0

    .line 173
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsScreenShareControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsScreenShareController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onGetVideoProvider(II)Lorg/codeaurora/ims/internal/IVideoCallProvider;
    .locals 0

    .line 259
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getVideoProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/codeaurora/ims/VideoCallProviderBase;->getBinder()Lorg/codeaurora/ims/internal/IVideoCallProvider;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object p1

    const/16 v0, 0x3ea

    .line 121
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetVvmAppConfig :: Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected onIsCallComposerEnabled(I)Z
    .locals 0

    .line 189
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isCallComposerSupported()Z

    move-result p0

    return p0
.end method

.method protected onIsDataChannelEnabled(I)Z
    .locals 0

    .line 230
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isDataChannelSupported()Z

    move-result p0

    return p0
.end method

.method protected onIsExitScbmFeatureSupported(I)Z
    .locals 0

    .line 219
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isExitScbmFeatureSupported()Z

    move-result p0

    return p0
.end method

.method protected onIsIntelligentCallingFeatureSupported(I)Z
    .locals 0

    .line 270
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isIntelligentCallingFeatureSupported()Z

    move-result p0

    return p0
.end method

.method protected onIsRttVtFeatureSupported(I)Z
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isRttVtFeatureSupported()Z

    move-result p0

    return p0
.end method

.method protected onQueryCallBarringStatus(IILjava/lang/String;IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual/range {p1 .. p6}, Lorg/codeaurora/ims/ImsServiceSub;->queryCallBarringStatus(ILjava/lang/String;IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQueryCallForwardStatus(IIIZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsServiceSub;->queryCallForwardStatus(IIZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->resumePendingCall(I)V

    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->sendVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSendVosSupportStatus(IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->sendVosSupportStatus(ZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetAnswerExtras(ILandroid/os/Bundle;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setAnswerExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual/range {p1 .. p10}, Lorg/codeaurora/ims/ImsServiceSub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetDataChannelCapabilityListener(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setDataChannelCapabilityListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetGlassesFree3dVideoCapability(IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setGlassesFree3dVideoCapability(ZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetIncomingRttVtUpgradeListener(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setIncomingRttVtUpgradeListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetPendingOutgoingRttVtModifyFlag(I)Z
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->setPendingOutgoingRttVtModifyFlag()Z

    move-result p0

    return p0
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSetRcsAppConfig :: Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected onSetUssdInfoListener(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSetVvmAppConfig :: Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method
