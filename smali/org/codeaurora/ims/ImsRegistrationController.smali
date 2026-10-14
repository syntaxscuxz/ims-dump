.class public Lorg/codeaurora/ims/ImsRegistrationController;
.super Ljava/lang/Object;
.source "ImsRegistrationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    }
.end annotation


# static fields
.field private static final IKEv2_AUTH_FAILURE:I = 0x5


# instance fields
.field private final EVENT_GEO_LOCATION_DATA_STATUS:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_ON_IMS_ENABLED_CHANGED:I

.field private final EVENT_QUERY_IMS_REG_STATE:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SRV_DOMAIN_CHANGED:I

.field private final IMS_DISABLED:I

.field private final IMS_ENABLED:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsImsEnabled:Z

.field private mIsQueryingRegState:Z

.field private mLastExtraErrCode:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsRegistrationController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationStatus:I

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvDomain:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 v2, 0x2

    .line 62
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 63
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 64
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x1

    .line 70
    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 71
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_GEO_LOCATION_DATA_STATUS:I

    const/4 v4, 0x3

    .line 72
    iput v4, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_CHANGED:I

    const/4 v5, 0x4

    .line 73
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_DONE:I

    const/4 v5, 0x5

    .line 74
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_SRV_DOMAIN_CHANGED:I

    const/4 v6, 0x6

    .line 75
    iput v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_QUERY_IMS_REG_STATE:I

    const/4 v6, 0x7

    .line 76
    iput v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_ON_IMS_ENABLED_CHANGED:I

    .line 78
    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->IMS_ENABLED:I

    .line 79
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->IMS_DISABLED:I

    .line 83
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 85
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsImsEnabled:Z

    .line 86
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mLastExtraErrCode:I

    .line 105
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mContext:Landroid/content/Context;

    .line 108
    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p2, p1, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private getExtraErrorCodeFromSrvDomain()I
    .locals 1

    .line 427
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsImsEnabled:Z

    if-eqz v0, :cond_0

    .line 428
    iget p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRegistrationUtils;->convertToPsAttachedCode(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xfa2

    return p0
.end method

.method private handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 367
    const-string v0, "handleGeoLocationDataStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 374
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, ""

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x2

    .line 376
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 377
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 378
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 369
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_GEO_LOCATION_DATA_STATUS AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleImsEnabledChanged(Z)V
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleImsEnabledChanged: enabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsImsEnabled:Z

    .line 495
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->getExtraErrorCodeFromSrvDomain()I

    move-result p1

    .line 496
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mLastExtraErrCode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 499
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    return-void
.end method

.method private handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6

    .line 383
    const-string v0, "handleImsStateChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 384
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 395
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v0

    .line 397
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorCode()I

    move-result v1

    .line 398
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getState()I

    move-result p1

    if-eqz v3, :cond_1

    .line 403
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 407
    :goto_0
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 411
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 413
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    :cond_2
    const/4 v1, 0x1

    .line 415
    invoke-direct {p0, p1, v4, v0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 417
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-static {p1, v3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 420
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    :cond_3
    return-void

    .line 385
    :cond_4
    :goto_1
    const-string p1, "handleImsStateChanged error"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleQueryImsRegistrationState()V
    .locals 2

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 325
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 332
    invoke-virtual {p1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object p1

    .line 336
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRegistrationController;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    const-string p1, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x580

    const/4 v1, 0x0

    const/16 v2, 0x578

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/16 v0, 0x13

    .line 342
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_1
    return-void

    .line 326
    :cond_2
    :goto_0
    const-string p1, "Async result is null or exception is not null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 479
    const-string v0, "handleSrvDomainChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 480
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 486
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-eq v0, p1, :cond_1

    .line 487
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 p1, 0x0

    .line 488
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    :cond_1
    return-void

    .line 481
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_SRV_DOMAIN_CHANGED AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private isDisposed()Z
    .locals 0

    .line 522
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 3

    .line 350
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private maybeNotifySrvDomainChange(Z)V
    .locals 5

    .line 439
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 440
    const-string p1, "checkSrvDomainChange IMS not deregistered."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->getExtraErrorCodeFromSrvDomain()I

    move-result v0

    .line 445
    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mLastExtraErrCode:I

    .line 446
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const v0, 0x7fffffff

    const/4 v3, 0x0

    .line 447
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    if-nez p1, :cond_1

    .line 450
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1, p1, v0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    :cond_1
    return-void
.end method

.method private notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 190
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 191
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 174
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 175
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 182
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 183
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1

    .line 203
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 204
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 197
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 198
    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    .line 251
    :cond_0
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 245
    :cond_1
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 246
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 240
    :cond_2
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    if-nez p1, :cond_1

    .line 462
    const-string p1, "new_uris is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 465
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 466
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSelfIdentityUriCache :: new self-identity host URI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v0

    .line 468
    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string p1, "addListener, returning as ImsRegistrationController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    const-string p0, "listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 503
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "dispose, returning as already disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_0
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V

    .line 509
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V

    .line 510
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvDomainChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 513
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 514
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 515
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 v1, 0x2

    .line 516
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 517
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 518
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 262
    const-string p1, "handleMessage, returning as isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 267
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsEnabledChanged(Z)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleQueryImsRegistrationState()V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 306
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isAidlReorderingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const-string p1, "EVENT_IMS_STATE_DONE. Ignoring as relying on indication is supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 297
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    if-eqz v0, :cond_3

    .line 298
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 299
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string p1, "EVENT_IMS_STATE_DONE. Ignoring due to new unsol event received"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 278
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 280
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleQueryImsRegistrationState()V

    goto :goto_0

    .line 286
    :cond_4
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 287
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 273
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 274
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 269
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 270
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onImsDisabled()V
    .locals 2

    .line 164
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "onImsDisabled: ignore since disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onImsEnabled()V
    .locals 3

    .line 155
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "onImsEnabled: ignore since disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string p1, "removeListener, returning as ImsRegistrationController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listener not found, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_2
    const-string p0, "listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public requestImsRegistrationState()V
    .locals 1

    .line 209
    const-string v0, "requestImsRegistrationState"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reset(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 220
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string p1, "reset, returning as ImsRegistrationController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 225
    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 227
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void
.end method
