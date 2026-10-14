.class public Lorg/codeaurora/ims/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;,
        Lorg/codeaurora/ims/ImsConferenceController$Listener;,
        Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;,
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;
    }
.end annotation


# static fields
.field private static final EVENT_ABORT_CONFERENCE:I = 0x6

.field private static final EVENT_CONFERENCE:I = 0x1

.field private static final EVENT_CONFERENCE_CALL_STATE_COMPLETED:I = 0x3

.field private static final EVENT_HANGUP_NETWORK_HELD_PARTICIPANT:I = 0x5

.field private static final EVENT_REFRESH_CONF_INFO:I = 0x2

.field private static final EVENT_RESUME_NETWORK_HELD_PARTICIPANT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceController"


# instance fields
.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

.field private mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

.field private mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mIsConferenceCallStateCompleted:Z

.field private mIsConferenceResponseReceived:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsConferenceController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAbortConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleAbortConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConferenceCompleted(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHangupResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleHangupResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleResumeResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    .line 54
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 56
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 179
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 180
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    .line 181
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 182
    new-instance p1, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;

    invoke-direct {p1, p0}, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;-><init>(Lorg/codeaurora/ims/ImsConferenceController;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 184
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p0, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 482
    const-string p1, "getCallSession: ImsServiceClassTracker is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 486
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method private getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 0

    if-nez p1, :cond_0

    .line 469
    const-string p1, "getCallSessionDriverCallState: activeCallSession is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 470
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 477
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v0, :cond_0

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getCallSessionWithMptyBitSet session = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0

    .line 446
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method private handleAbortConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 580
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 586
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lorg/codeaurora/ims/ImsRilException;

    .line 587
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 590
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldAllowPendingRequest : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyAbortConferenceCompleted(Z)V

    return-void
.end method

.method private handleConferenceCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 597
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    return-void
.end method

.method private handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    if-eqz p1, :cond_1

    .line 562
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 563
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 566
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 567
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    return-void

    .line 571
    :cond_2
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    if-nez p1, :cond_3

    return-void

    .line 576
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    return-void
.end method

.method private handleHangupResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 554
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hangup error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    return-void
.end method

.method private handleResumeResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 536
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 540
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v0, :cond_0

    .line 542
    const-string p1, "handleResumeResponse: Hangup call due to explicit resume operation failed"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v1

    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    .line 545
    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1f5

    const/4 v6, 0x0

    .line 543
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 549
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .line 615
    const-string p0, "ImsConferenceController"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 627
    const-string p0, "ImsConferenceController"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .line 611
    const-string p0, "ImsConferenceController"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0

    .line 619
    const-string p0, "ImsConferenceController"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 0

    .line 623
    const-string p0, "ImsConferenceController"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private notifyAbortConferenceCompleted(Z)V
    .locals 1

    .line 170
    const-string v0, "notifyAbortConferenceCompleted"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 172
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onAbortConferenceCompleted(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 1

    .line 163
    const-string v0, "notifyConferenceStateChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 165
    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processConferenceFailure()V
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 263
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 264
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 265
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    return-void
.end method

.method private processConferenceResult()V
    .locals 4

    .line 269
    const-string v0, "Conference response received. Processing final result."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 276
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 281
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 286
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 288
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "Setting mIsConferenceHostSession to true"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 290
    iput-boolean v1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 300
    :cond_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v2, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    .line 322
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 316
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 317
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 318
    const-string v0, "processConferenceResult: close conf host session"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->close()V

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 326
    :cond_4
    :goto_0
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 327
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 330
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    return-void
.end method


# virtual methods
.method cleanupConferenceAttempt()V
    .locals 2

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 225
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 227
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 228
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 229
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 230
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 190
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRefreshConfInfo(Landroid/os/Handler;)V

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 194
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 452
    const-string p1, "getCallSessionByState: ImsServiceClassTracker is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-object v1

    .line 456
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object p1

    .line 458
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const-string p1, "getCallSessionByState: there are no call sessions"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 463
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method public getConferenceState()Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 607
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public handleConferenceResult()V
    .locals 3

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 249
    const-string v0, "handleConferenceResult: Resume network HELD call"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 251
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result p0

    .line 250
    invoke-virtual {v0, v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    return-void

    .line 258
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceResult()V

    return-void
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    .line 396
    const-string v0, "handleRefreshConfInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 399
    const-string p1, "handleRefreshConfInfo: AsyncResult is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleRefreshConfInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-void

    .line 408
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 409
    const-string p1, "handleRefreshConfInfo: ConfInfo is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-void

    .line 413
    :cond_2
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ConfInfo;

    .line 414
    invoke-virtual {p1}, Lorg/codeaurora/ims/ConfInfo;->getConfInfoUri()[B

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Lorg/codeaurora/ims/ConfInfo;->getConfCallState()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    .line 417
    :goto_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 419
    array-length v3, v0

    if-lt v3, v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 426
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRefreshConfInfo: confCallState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callSession = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    return-void

    .line 420
    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRefreshConfInfo: confInfoBytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " CallSession: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isInProgress()Z
    .locals 1

    .line 138
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mayBeUpdateMultipartyState : CallSession isMpty: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result p1

    if-ne p1, p2, :cond_0

    .line 153
    const-string p1, "mayBeUpdateMultipartyState : no change in mpty"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 158
    invoke-interface {p1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceParticipantStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 212
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    const/4 p0, 0x0

    return p0

    .line 207
    :cond_1
    :goto_0
    const-string p1, "processNewMptyCall: callSession is phantom conference call"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 105
    :cond_0
    const-string p1, "registerListener :: duplicate Listener!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logw(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_1
    const-string p0, "Listener is null!"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public sendAbortConferenceRequest(I)V
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->abortConference(Landroid/os/Message;I)V

    return-void
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conference request being requested by session = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string p1, "sendConferenceRequest: in middle of merge process, ignore."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/ims/ImsConferenceController-IA;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    .line 342
    iput-object p1, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 348
    iget-object p1, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 352
    sget-object p1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    if-nez p1, :cond_1

    .line 354
    const-string p1, "sendConferenceRequest: there is no ACTIVE call session"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 361
    sget-object p1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    if-nez p1, :cond_2

    .line 363
    const-string p1, "sendConferenceRequest: there is no HOLD call session"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 370
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean p1, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean p1, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz p1, :cond_4

    .line 372
    :cond_3
    const-string p1, "sendConferenceRequest: Setting should have transient session to false "

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-boolean v0, p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    .line 376
    :cond_4
    sget-object p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 379
    sget-object p1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 382
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 118
    :cond_0
    const-string p0, "Listener is null!"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
