.class public Lorg/codeaurora/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$PauseState;,
        Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final RTT_VT_RESET_TIMEOUT_MILLIS:I = 0xbb8


# instance fields
.field private mAvpCallType:I

.field private mAvpRetryAllowed:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsCarMode:Z

.field private mIsLocallyPaused:Z

.field private mIsRttVtFeatureSupported:Z

.field private mIsVideoPauseRequested:Z

.field private mMultiTaskRetryCount:I

.field private mPendingMtRttVtModify:Z

.field private mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field private mPhoneId:I

.field private mPrevVideoCallType:I

.field private mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMtRttVtModify(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttVtSm(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLocallyPaused(Lorg/codeaurora/ims/ImsCallModification;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingMtRttVtModify(Lorg/codeaurora/ims/ImsCallModification;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAndSendMultiTaskRequest(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldRetryVideoPause(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreviousVTCallType(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1

    .line 132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    const/16 v1, 0xa

    .line 63
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    const/4 v2, 0x1

    .line 64
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 65
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 66
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 77
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    .line 78
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsRttVtFeatureSupported:Z

    .line 85
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 88
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 91
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 98
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    .line 99
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallModification$1;-><init>(Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsCallModification instance created imsCallSessionImpl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 140
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 141
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 142
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    .line 143
    new-instance p1, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {p1, p0, p4}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-direct {p1, p0, p4}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;-><init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    .line 145
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsRttVtFeatureSupported:Z

    .line 147
    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const-string p1, "Registering car mode receiver"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->getSystemCarMode()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return-void
.end method

.method private areCallTypesSame(I)Z
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 195
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v0, "areCallTypesSame - setting calltype to dual vt call"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1d

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private canModifyRttCallType(I)Z
    .locals 7

    .line 1165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 1166
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    .line 1167
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    .line 1168
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1169
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v5

    .line 1170
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "fromCallType: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isRttCall: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoRttSupported: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoUpgradeRequest"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    return v4
.end method

.method private clearPendingModify()V
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearPendingModify imsconn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearPendingVTMultiTask imsconn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method private getSystemCarMode()Z
    .locals 2

    .line 119
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    const-string v0, "uimode"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static hasError(Lorg/codeaurora/ims/CallModify;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static invertRttMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private isDualVtRequest(I)Z
    .locals 0

    .line 636
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isDualVtCallType(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isIndexValid()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .line 394
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 399
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 401
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldAndNewPauseRequestSame "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method private isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1154
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: isUpgradeRequestForRtt rttMode = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 4

    .line 712
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 713
    const-string p1, "callModifyRequest is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 717
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v2

    .line 724
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object p0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private isVideoCrbtCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 6

    .line 242
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->isCrbtCall()Z

    move-result v0

    .line 244
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 245
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 246
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrbtSupported(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 248
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isCrbtCall: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCrbtCallBackwardCompatibility: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 250
    :cond_2
    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 252
    const-string p1, "This is Video CRBT call"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_3
    return v4
.end method

.method private isVisualizedVoiceCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 259
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->isVisualizedVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 261
    const-string p1, "This is Visualized Voice call"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isDualVtRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "modifyCallInitiate not a valid CallType"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 654
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isDualVtCallType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 656
    const-string p2, "Ignore Dual VT upgrade since current call is not bidirectional VT"

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030005

    .line 658
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 657
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 666
    :cond_2
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v3

    .line 667
    invoke-static {p3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p2, v3, p3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 669
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p3

    .line 671
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->shouldInvertRtt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    invoke-static {p3}, Lorg/codeaurora/ims/ImsCallModification;->invertRttMode(I)I

    move-result p3

    .line 673
    const-string v1, "modifyCallInitiate: dual RTT+VT upgrade, inverting RTT mode"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->sendMessage(I)V

    .line 676
    :cond_3
    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 678
    :cond_4
    new-instance p3, Lorg/codeaurora/ims/CallModify;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {p3, v2, v1}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    .line 680
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_5

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overwriting callModifyRequest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with callModify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    :cond_5
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 685
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V

    if-eqz v0, :cond_6

    .line 687
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->dualVtRequest(Landroid/os/Message;I)V

    return-void

    .line 689
    :cond_6
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0, p1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method private notifyVideoPaused(I)V
    .locals 2

    .line 577
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 578
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_1

    .line 188
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_2

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_1

    .line 421
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 422
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    return-void

    .line 424
    :cond_1
    const-string v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private retryAvpUpgrade(Z)V
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryAvpUpgrade: AVPF failed so retrying using AVP. mAvpCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shouldNotifyUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 585
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 586
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    .line 773
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 775
    invoke-static {p1, p2, p0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private shouldRetryVideoPause()Z
    .locals 1

    .line 411
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "triggerOrQueueVTMultitask callType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 169
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 170
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 171
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez p1, :cond_2

    .line 172
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    :cond_2
    return-void
.end method

.method private updatePreviousVTCallType(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 593
    :cond_1
    :goto_0
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Updating mPrevVideoCallType to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private validateIncomingModifyConnectionType(I)Z
    .locals 5

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateIncomingModifyConnectionType newCallType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result p1

    .line 271
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v0

    .line 276
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 277
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v1

    iget v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 282
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "validateIncomingModifyConnectionType modifyToCurrCallType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isIndexValid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isLowBattery = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method private validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z
    .locals 6

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateOutgoingModifyConnectionType newCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v0

    .line 211
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v1

    .line 212
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v2

    .line 213
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->canModifyRttCallType(I)Z

    move-result p2

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 216
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v4

    if-nez v4, :cond_1

    xor-int/lit8 v4, v2, 0x1

    and-int/2addr v3, v4

    .line 220
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "validateOutgoingModifyConnectionType modifyToCurrCallType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isIndexValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLowBattery = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRttCallModificationAllowed = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-nez v3, :cond_5

    const/4 p0, 0x0

    if-eqz v2, :cond_3

    .line 229
    new-instance p2, Lorg/codeaurora/ims/ImsRilException;

    const/16 v0, 0x32

    const-string v1, "Low Battery"

    invoke-direct {p2, v0, v1}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 233
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Can\'t modify call."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p2, p0

    .line 235
    :goto_1
    invoke-static {p1, p0, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_2
    return v3
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Confirming call type change request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM with invalid calltype "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_5

    .line 747
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 749
    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput v2, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 751
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eqz p2, :cond_2

    .line 753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 756
    :cond_2
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const/16 p3, 0x1d

    if-ne p1, p3, :cond_3

    .line 758
    const-string p3, "answering dual vt upgrade request"

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void

    :cond_3
    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    .line 760
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 761
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 762
    const-string p1, "response to downgrade from dual video to bi-directional vt"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    .line 765
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 767
    :cond_4
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {p1, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    :cond_5
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeConnectionType  newCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newExtras= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 605
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iput p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 614
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_4

    .line 616
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isDualVtRequest(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 617
    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsCallModification;->validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 618
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 621
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    const-string p2, "Pending callModifyRequest so not sending modify request down"

    .line 627
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_0

    .line 1180
    sget v1, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1181
    const-string v0, "Cancel pending call modification before being closed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 1183
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 1185
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->close()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getIsVideoPauseRequested()Z
    .locals 0

    .line 492
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return p0
.end method

.method public getMultiTaskRetryCount()I
    .locals 0

    .line 477
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p0
.end method

.method public getPendingIncomingRttVtUpgradeFlag()Z
    .locals 0

    .line 467
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    return p0
.end method

.method public getPendingModify()Lorg/codeaurora/ims/CallModify;
    .locals 0

    .line 438
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object p0
.end method

.method public getPendingVTMultitask()Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 0

    .line 487
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object p0
.end method

.method public getPrevVideoCallType()I
    .locals 0

    .line 448
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    return p0
.end method

.method public getRttVtSm()Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
    .locals 0

    .line 960
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    return-object p0
.end method

.method public getRttVtStateName()Ljava/lang/String;
    .locals 0

    .line 965
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 966
    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Halted"

    return-object p0
.end method

.method public isAvpRetryAllowed()Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return p0
.end method

.method public isLocallyPaused()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p0
.end method

.method public isOutgoingRttVtUpgradeInProcess()Z
    .locals 0

    .line 453
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->isIdle()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVideoPauseRequested()Z
    .locals 0

    .line 1149
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return p0
.end method

.method public onOutgoingDualRttVtUpgrade()V
    .locals 1

    .line 458
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->sendMessage(I)V

    return-void
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedCallModify("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 307
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->error:I

    iput v3, v0, Lorg/codeaurora/ims/CallModify;->error:I

    move v3, v1

    goto/16 :goto_3

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Received Request:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    goto :goto_3

    .line 318
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    .line 321
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallModification;->validateIncomingModifyConnectionType(I)Z

    move-result v3

    .line 323
    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->isVideoCrbtCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 324
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->isVisualizedVoiceCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 329
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v4, :cond_3

    .line 330
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    goto :goto_2

    .line 332
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "videocall onReceivedModifyCall: not notifying user aboutincoming modify call request as this is CRBT/UVS call. Don\'t cache the request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    .line 339
    :cond_6
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    if-nez v4, :cond_7

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    :cond_8
    move v2, v0

    .line 345
    :goto_3
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v0, v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x32

    .line 347
    iput v4, p1, Lorg/codeaurora/ims/CallModify;->error:I

    .line 351
    :cond_9
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsRttVtFeatureSupported:Z

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 352
    const-string p1, "MT dual upgrade detected with feature supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyIncomingRttVtCallUpgrade()V

    .line 355
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    .line 356
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V

    .line 357
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    return-void

    :cond_a
    if-eqz v2, :cond_c

    .line 364
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttAutoUpgradeSupported(ILandroid/content/Context;)Z

    move-result v0

    .line 369
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_b

    .line 365
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    .line 366
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 369
    :cond_b
    iget-object p1, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V

    .line 370
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 373
    :cond_c
    const-string v1, "RTT: onReceivedModifyCall: No RTT modification"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_e

    if-eqz v0, :cond_d

    goto :goto_4

    .line 384
    :cond_d
    const-string v0, "onReceivedModifyCall: No notify for CallModify "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 382
    :cond_e
    :goto_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 387
    :goto_5
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->hasError(Lorg/codeaurora/ims/CallModify;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 388
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    :cond_f
    return-void
.end method

.method public onRttModifyRequestSuppressed()V
    .locals 1

    .line 462
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mRttVtSm:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->sendMessage(I)V

    return-void
.end method

.method public rejectConnectionTypeChange(Landroid/os/Message;)V
    .locals 4

    .line 784
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_0

    .line 785
    const-string v0, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    const-string v0, "no existing modify request"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 788
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    const-string v0, "rejectConnectionTypeChange callModifyRequest timed out."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 791
    const-string v0, "modify request timed out"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 794
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 795
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 797
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 798
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 799
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting Change request: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " keep as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 804
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 809
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void

    .line 806
    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void
.end method

.method public setIsLocallyPaused(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return-void
.end method

.method public setMultiTaskRetryCount(I)V
    .locals 0

    .line 482
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return-void
.end method

.method public setPendingIncomingRttVtUpgradeFlag(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingMtRttVtModify:Z

    return-void
.end method

.method public setPendingModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-void
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    .line 505
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_0

    .line 506
    const-string p1, "update dc.callDetails is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update dc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 516
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->isDualVtRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-nez v0, :cond_1

    .line 518
    const-string v0, "update: Dual VT Request pending but call downgraded to VoLTE.Failing request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    sget v1, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 521
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 522
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 526
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isActive(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 527
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 531
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 532
    const-string v0, "videocall: update: Not a videocall CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 534
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 535
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 543
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v2

    if-nez v0, :cond_7

    if-eqz v2, :cond_5

    goto :goto_0

    .line 547
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 549
    const-string v0, "videocall Video Paused CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 552
    const-string v0, "videocall Video Resumed CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 545
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "videocall AVP RETRY CASE dc= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " conn= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->retryAvpUpgrade(Z)V

    .line 555
    :cond_9
    :goto_2
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    .line 570
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 571
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 572
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    :cond_a
    return-void
.end method
