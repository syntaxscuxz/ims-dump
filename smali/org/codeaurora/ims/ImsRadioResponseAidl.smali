.class public Lorg/codeaurora/ims/ImsRadioResponseAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.source "ImsRadioResponseAidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 50
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SUB"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abortConferenceResponse(II)V
    .locals 1

    .line 459
    const-string v0, "abort conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 460
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 461
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 460
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAbortConferenceResponse(II)V

    return-void
.end method

.method public addParticipantResponse(II)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add Participant response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 309
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 308
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    return-void
.end method

.method public answerResponse(II)V
    .locals 1

    .line 76
    const-string v0, "Answer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1

    .line 344
    const-string v0, "Cancel modify call response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 345
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 346
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 345
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 401
    const-string v0, "Cancel pending USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 402
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 403
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 404
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 403
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 167
    const-string v0, "conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 168
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 169
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 170
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 169
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1

    .line 314
    const-string v0, "Deflect call response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 316
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 315
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    return-void
.end method

.method public dialResponse(II)V
    .locals 1

    .line 70
    const-string v0, "Dial response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exit Emergency Callback response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 209
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 208
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    return-void
.end method

.method public exitSmsCallBackModeResponse(II)V
    .locals 1

    .line 431
    const-string v0, "exit SCBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 433
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 432
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->exitSmsCallBackModeResponse(II)V

    return-void
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 273
    const-string v0, "Explicit call transfer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 274
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 275
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 276
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 275
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0

    .line 264
    const-string p4, "Get call waiting response received"

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 265
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I

    move-result-object p3

    .line 266
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 267
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 266
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 1

    .line 176
    const-string v0, "Get clip response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 177
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;

    move-result-object p3

    .line 178
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 179
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 178
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 1

    .line 185
    const-string v0, "Get clir response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 186
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 187
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 188
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 187
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 1

    .line 199
    const-string v0, "getColr response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 200
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;

    move-result-object p3

    .line 201
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 202
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 201
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 1

    .line 135
    const-string v0, "Get config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 136
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 137
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 138
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 137
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 1

    .line 144
    const-string v0, "getImsRegistrationStateResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 145
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object p3

    .line 146
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 147
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 146
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 1

    .line 329
    const-string v0, "Subconfig response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 330
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object p3

    .line 331
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 332
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 331
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 65
    const-string p0, "dc806056be96e3f93efdfebf8f19134f7505a1ee"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Rtp Error Statistics response received packetErrorCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 302
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 301
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Rtp Statistics response received packetCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 293
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 292
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    return-void
.end method

.method public hangupResponse(II)V
    .locals 1

    .line 82
    const-string v0, "Hangup response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 111
    const-string v0, "Hold response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 112
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 113
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 114
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 113
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1

    .line 246
    const-string v0, "Modify call confirm response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 248
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 247
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1

    .line 239
    const-string v0, "Modify call initiate response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 241
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 240
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    return-void
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0

    .line 254
    const-string p4, "Query call forward status response received"

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 256
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object p3

    .line 257
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 258
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 257
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    return-void
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 1

    .line 423
    const-string v0, "query multi sim voice capability."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 425
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 426
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result p3

    .line 424
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryMultiSimVoiceCapabilityResponse(III)V

    return-void
.end method

.method public queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 1

    .line 96
    const-string v0, "QueryServiceStatusResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 97
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object p3

    .line 98
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 99
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 98
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 373
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 374
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p2, v1}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 375
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "queryVirtualLineInfoResponse :: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 376
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 367
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 366
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1

    .line 88
    const-string v0, "Registration change response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 90
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 89
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 119
    const-string v0, "Resume response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 120
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 121
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 122
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 121
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1

    .line 321
    const-string v0, "Send geolocation response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 323
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 322
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 339
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 338
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 1

    .line 409
    const-string v0, "Send sip dtmf response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    return-void
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 4

    .line 351
    const-string v0, "Ims sms response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 352
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    if-eqz v0, :cond_1

    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->msgRef:I

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    iget v3, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->networkErrorCode:I

    iget p2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->radioTech:I

    invoke-static {v0, v1, v2, v3, p2}, Lorg/codeaurora/ims/StableAidl;->toSmsResponse(IIIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object p2

    .line 360
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    return-void

    .line 354
    :cond_1
    :goto_0
    const-string p1, "Status or reason invalid."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 392
    const-string v0, "Send USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 393
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 394
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 395
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 394
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendVosActionInfoResponse(II)V
    .locals 1

    .line 445
    const-string v0, "Send VOS action info response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 446
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 447
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 446
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosActionInfoResponse(II)V

    return-void
.end method

.method public sendVosSupportStatusResponse(II)V
    .locals 1

    .line 438
    const-string v0, "Send VOS support status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 440
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 439
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosSupportStatusResponse(II)V

    return-void
.end method

.method public setAllCallBarringStatusResponse(IILvendor/qti/hardware/radio/ims/CallBarringStatusInfo;)V
    .locals 1

    .line 467
    const-string v0, "Set All Call Barring status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 469
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallBarringStatusInfo(Lvendor/qti/hardware/radio/ims/CallBarringStatusInfo;)Lorg/codeaurora/ims/CallBarringStatusInfo;

    move-result-object p3

    .line 470
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 471
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 470
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetAllCallBarringStatusResponse(IILorg/codeaurora/ims/CallBarringStatusInfo;)V

    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 1

    .line 382
    const-string v0, "Set call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 384
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object p3

    .line 385
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 386
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 385
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    return-void
.end method

.method public setClirResponse(II)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set clir response received  error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 1

    .line 127
    const-string v0, "Set config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 129
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 130
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 129
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public setGlassesFree3dVideoCapabilityResponse(II)V
    .locals 1

    .line 452
    const-string v0, "Set glasses free 3d video capability response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 453
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 454
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 453
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetGlassesFree3dVideoCapabilityResponse(II)V

    return-void
.end method

.method public setMediaConfigurationResponse(II)V
    .locals 1

    .line 415
    const-string v0, "Set media configuration response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 416
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 417
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 416
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetMediaConfigurationResponse(II)V

    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1

    .line 104
    const-string v0, "SetServiceStatus response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 106
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 105
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1

    .line 282
    const-string v0, "Set supp service notification response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 284
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 283
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set Ui TTY mode response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 234
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 233
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Supp Service status response received status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isPasswordRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 160
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object p3

    .line 161
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 162
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 161
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    return-void
.end method
