.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_BEFORE_SENDING_MS:I = 0xea60

.field public static final EVENT_POLL_DATAUSAGE:I = 0x2

.field private static final EVENT_SEND_SESSION_MODIFY_CALL_CONFIRM_DONE:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final STREAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProviderImpl"

.field private static mStartDatausagePolling:Z = false


# instance fields
.field private lastDataUsage:[J

.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field private mPreviewSurface:Landroid/view/Surface;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;


# direct methods
.method static bridge synthetic -$$Nest$mhandleDataUsagePoll(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleDataUsagePoll(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionModifyConfirmDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyConfirmDone(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionModifyDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyDone(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsVideocallProviderImpl instance created callSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 76
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 77
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 78
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 80
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private anyNegative([J)Z
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    .line 403
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 404
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private handleDataUsagePoll(Landroid/os/Message;)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDataUsagePoll msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    .line 334
    sget-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 336
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private handleSessionModifyConfirmDone(Landroid/os/Message;)V
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSessionModifyConfirmDone msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 268
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 274
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 275
    const-string p1, "Session modify confirm success"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 277
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 278
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "Session modify confirm error"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 283
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v2

    .line 284
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 285
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p1

    const/4 v0, 0x4

    .line 284
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    const-string p1, "handleSessionModifyConfirmDone: null message object"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 291
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v2, p1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private handleSessionModifyDone(Landroid/os/Message;)V
    .locals 4

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSessionModifyDone msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 299
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 302
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 304
    const-string p1, "Session modify success"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    move p1, v0

    goto :goto_0

    .line 308
    :cond_0
    const-string v1, "Session modify error"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 309
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result p1

    .line 310
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 311
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    const/4 v2, 0x4

    .line 310
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 315
    :cond_1
    const-string p1, "handleSessionModifyDone:null message object"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    const/16 v2, 0x1b

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 319
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 324
    :goto_2
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 573
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session is closed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 581
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 585
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public answerDualVtRequest(Landroid/os/Message;ZI)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/ims/vt/MediaController;->answerDualVtRequest(Landroid/os/Message;ZII)V

    return-void

    .line 167
    :cond_0
    const-string p1, "answerDualVtRequest invalid mediaId"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->dualVtRequest(Landroid/os/Message;II)V

    return-void

    .line 158
    :cond_0
    const-string p1, "dualVtRequest invalid mediaId"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public enableArMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode input camera id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCurrentCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "enableArMode use current camera, id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCurrentCameraId:Ljava/lang/String;

    .line 129
    :cond_0
    const-string v0, "enableArMode close camera"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onSetCamera(Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->enableArMode(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getArPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getNegotiatedFps()I
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->getNegotiatedFps(I)I

    move-result p0

    return p0
.end method

.method isOpen()Z
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isOpen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 173
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return p0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActive session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    .line 544
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 545
    sput-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 546
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 550
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 552
    sput-boolean p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 17

    move-object/from16 v0, p0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallDataUsageChanged: dataUsage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v3

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    sub-long/2addr v3, v6

    .line 386
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v6

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v8, 0x1

    aget-wide v9, v1, v8

    sub-long/2addr v6, v9

    .line 388
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v9

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v11, 0x2

    aget-wide v12, v1, v11

    sub-long/2addr v9, v12

    .line 390
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v12

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v14, 0x3

    aget-wide v15, v1, v14

    sub-long/2addr v12, v15

    const/4 v1, 0x4

    new-array v1, v1, [J

    aput-wide v3, v1, v5

    aput-wide v6, v1, v8

    aput-wide v9, v1, v11

    aput-wide v12, v1, v14

    .line 392
    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->anyNegative([J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    iget-object v3, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    new-instance v4, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v4, v1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    .line 394
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v5

    .line 395
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v8

    .line 396
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v11

    .line 397
    iget-object v0, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v1

    aput-wide v1, v0, v14

    return-void

    .line 399
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative delta:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0

    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 1

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 505
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 506
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 507
    sput-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisconnected session"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 498
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHold session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 559
    sput-boolean p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onRecordingDisabled()V
    .locals 1

    .line 457
    const-string v0, "onRecordingDisabled "

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingDisabled()V

    return-void
.end method

.method public onRecordingEnabled()V
    .locals 1

    .line 451
    const-string v0, "onRecordingEnabled "

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingEnabled()V

    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 3

    .line 467
    const-string v0, "onRequestCallDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(II)V

    return-void

    .line 474
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestCallDataUsage: Invalid MediaId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 367
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities(I)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 374
    :cond_1
    const-string v0, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSendSessionModifyRequest, videoState="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " quality= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 246
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 247
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p0, 0x6

    .line 251
    invoke-virtual {v0, v1, p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 252
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isVideoPauseRequested()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x7

    invoke-virtual {p0, v1, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result p2

    .line 259
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p0, p1, p2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 3

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSendSessionModifyResponse, responseProfile state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 359
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/codeaurora/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V

    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetCamera, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCurrentCameraId:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDeviceOrientation, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(II)V

    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDisplaySurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 3

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPauseImage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 487
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 490
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;I)V

    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPreviewSurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 203
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onSetZoom(F)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetZoom, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/CameraController;->setZoom(FI)V

    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnsolCallModify session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callModify= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 517
    iget-object p1, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 518
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p1

    .line 519
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 520
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 521
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget p1, p2, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result p1

    const/4 p2, 0x0

    .line 524
    invoke-virtual {p0, p1, v0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void

    .line 526
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method public onUpdateOrientationMode(I)V
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateOrientationMode orientation mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateOrientationMode(I)V

    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdatePeerDimensions width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    return-void
.end method

.method public onUpdateRecorderFrameRate(I)V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateRecorderFrameRate = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecorderFrameRate(I)V

    return-void
.end method

.method public onUpdateRecordingSurface(Landroid/view/Surface;II)V
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateRecordingSurface recording surface = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingSurface(Landroid/view/Surface;II)V

    return-void
.end method

.method public onUpdateVideoQuality(I)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateVideoQuality video quality is="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeVideoQuality(I)V

    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1

    .line 418
    const-string v0, "sendCameraFailure"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 422
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 1

    .line 145
    const-string v0, "setLocalRenderingDelay"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setLocalRenderingDelay(I)V

    return-void
.end method

.method public setSharedDisplayParams(II)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSharedDisplayParams: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->setSharedDisplayParams(III)V

    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 113
    const-string v0, "stopScreenShare"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->stopScreenShare(I)V

    return-void
.end method
