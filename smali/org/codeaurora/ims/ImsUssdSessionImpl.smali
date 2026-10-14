.class public Lorg/codeaurora/ims/ImsUssdSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final EVENT_CANCEL_USSD:I = 0x2

.field private static final EVENT_CLOSE_USSD_SESSION:I = 0x4

.field private static final EVENT_USSD_MESSAGE_RECEIVED:I = 0x3

.field private static final EVENT_USSD_SENT_RESPONSE:I = 0x1


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mHandler:Landroid/os/Handler;

.field private mUssdInfo:Lorg/codeaurora/ims/UssdInfo;


# direct methods
.method static bridge synthetic -$$Nest$mOnUssdSentResponse(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoClose(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCancelUssd(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUssdMessageReceived(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V
    .locals 0

    .line 55
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 48
    new-instance p2, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;

    invoke-direct {p2, p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    iput-object p2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p6, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 57
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 58
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-nez p1, :cond_0

    .line 173
    const-string p1, "USSD: response result is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 177
    const-string v0, "USSD: ongoing USSD session"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 179
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 180
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v0, 0x0

    const-string v1, "USSD terminated"

    const/16 v2, 0x162

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USSD: response exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 189
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 190
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 192
    :cond_3
    const-string p1, "USSD: response received"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 194
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 139
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private doClose()V
    .locals 3

    .line 246
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 249
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 253
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->notifySessionClosed()V

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 260
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mPhoneId:I

    .line 262
    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    return-void

    :catchall_0
    move-exception p0

    .line 258
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-nez p1, :cond_0

    .line 200
    const-string p1, "USSD: response result is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancel USSD: response exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1
    const-string p1, "Cancel USSD: response received"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 208
    iput p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 209
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v0, 0x0

    const-string v1, "USSD Cancelled"

    const/16 v2, 0x1f5

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    if-nez p1, :cond_0

    .line 216
    const-string p1, "USSD: message result is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "USSD: message exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq p1, v1, :cond_1

    iget p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne p1, v2, :cond_4

    :cond_1
    const/16 p1, 0x8

    .line 224
    iput p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 225
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v0, 0x0

    const-string v1, "USSD Network Error"

    const/16 v2, 0x162

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 229
    :cond_2
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne v0, v2, :cond_4

    .line 231
    :cond_3
    const-string v0, "USSD: message received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/UssdInfo;

    .line 233
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    if-ne v0, v2, :cond_5

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 239
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "USSD: session closed mode: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 94
    iput p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 95
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    invoke-virtual {p2}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result p2

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 96
    invoke-virtual {p0}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p1, p2, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 116
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 135
    const-string p0, "-1"

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 267
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 130
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isUssdSupported()Z

    move-result p2

    if-nez p2, :cond_1

    .line 73
    const-string p1, "start: USSD is not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 p2, 0x0

    const-string v0, "USSD not supported"

    const/16 v1, 0x83

    invoke-direct {p1, v1, p2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 79
    iput p2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public terminate(I)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelPendingUssd(Landroid/os/Message;)V

    return-void
.end method
