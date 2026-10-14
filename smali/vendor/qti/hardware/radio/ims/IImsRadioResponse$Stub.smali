.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortConferenceResponse:I = 0x32

.field static final TRANSACTION_addParticipantResponse:I = 0x1f

.field static final TRANSACTION_answerResponse:I = 0x2

.field static final TRANSACTION_cancelModifyCallResponse:I = 0x24

.field static final TRANSACTION_cancelPendingUssdResponse:I = 0x2a

.field static final TRANSACTION_conferenceResponse:I = 0xd

.field static final TRANSACTION_deflectCallResponse:I = 0x20

.field static final TRANSACTION_dialResponse:I = 0x1

.field static final TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x12

.field static final TRANSACTION_exitSmsCallBackModeResponse:I = 0x2e

.field static final TRANSACTION_explicitCallTransferResponse:I = 0x1b

.field static final TRANSACTION_getCallWaitingResponse:I = 0x1a

.field static final TRANSACTION_getClipResponse:I = 0xe

.field static final TRANSACTION_getClirResponse:I = 0xf

.field static final TRANSACTION_getColrResponse:I = 0x11

.field static final TRANSACTION_getConfigResponse:I = 0xa

.field static final TRANSACTION_getImsRegistrationStateResponse:I = 0xb

.field static final TRANSACTION_getImsSubConfigResponse:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatisticsResponse:I = 0x1e

.field static final TRANSACTION_getRtpStatisticsResponse:I = 0x1d

.field static final TRANSACTION_hangupResponse:I = 0x3

.field static final TRANSACTION_holdResponse:I = 0x7

.field static final TRANSACTION_modifyCallConfirmResponse:I = 0x18

.field static final TRANSACTION_modifyCallInitiateResponse:I = 0x17

.field static final TRANSACTION_queryCallForwardStatusResponse:I = 0x19

.field static final TRANSACTION_queryMultiSimVoiceCapabilityResponse:I = 0x2d

.field static final TRANSACTION_queryServiceStatusResponse:I = 0x5

.field static final TRANSACTION_queryVirtualLineInfoResponse:I = 0x27

.field static final TRANSACTION_registerMultiIdentityLinesResponse:I = 0x26

.field static final TRANSACTION_requestRegistrationChangeResponse:I = 0x4

.field static final TRANSACTION_resumeResponse:I = 0x8

.field static final TRANSACTION_sendDtmfResponse:I = 0x13

.field static final TRANSACTION_sendGeolocationInfoResponse:I = 0x21

.field static final TRANSACTION_sendRttMessageResponse:I = 0x23

.field static final TRANSACTION_sendSipDtmfResponse:I = 0x2b

.field static final TRANSACTION_sendSmsResponse:I = 0x25

.field static final TRANSACTION_sendUssdResponse:I = 0x29

.field static final TRANSACTION_sendVosActionInfoResponse:I = 0x30

.field static final TRANSACTION_sendVosSupportStatusResponse:I = 0x2f

.field static final TRANSACTION_setAllCallBarringStatusResponse:I = 0x33

.field static final TRANSACTION_setCallForwardStatusResponse:I = 0x28

.field static final TRANSACTION_setClirResponse:I = 0x10

.field static final TRANSACTION_setConfigResponse:I = 0x9

.field static final TRANSACTION_setGlassesFree3dVideoCapabilityResponse:I = 0x31

.field static final TRANSACTION_setMediaConfigurationResponse:I = 0x2c

.field static final TRANSACTION_setServiceStatusResponse:I = 0x6

.field static final TRANSACTION_setSuppServiceNotificationResponse:I = 0x1c

.field static final TRANSACTION_setUiTTYModeResponse:I = 0x16

.field static final TRANSACTION_startDtmfResponse:I = 0x14

.field static final TRANSACTION_stopDtmfResponse:I = 0x15

.field static final TRANSACTION_suppServiceStatusResponse:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 196
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->markVintfStability()V

    .line 197
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    if-eqz v1, :cond_1

    .line 210
    check-cast v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    return-object v0

    .line 212
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 429
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 433
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 425
    :pswitch_2
    const-string p0, "setAllCallBarringStatusResponse"

    return-object p0

    .line 421
    :pswitch_3
    const-string p0, "abortConferenceResponse"

    return-object p0

    .line 417
    :pswitch_4
    const-string p0, "setGlassesFree3dVideoCapabilityResponse"

    return-object p0

    .line 413
    :pswitch_5
    const-string p0, "sendVosActionInfoResponse"

    return-object p0

    .line 409
    :pswitch_6
    const-string p0, "sendVosSupportStatusResponse"

    return-object p0

    .line 405
    :pswitch_7
    const-string p0, "exitSmsCallBackModeResponse"

    return-object p0

    .line 401
    :pswitch_8
    const-string p0, "queryMultiSimVoiceCapabilityResponse"

    return-object p0

    .line 397
    :pswitch_9
    const-string p0, "setMediaConfigurationResponse"

    return-object p0

    .line 393
    :pswitch_a
    const-string p0, "sendSipDtmfResponse"

    return-object p0

    .line 389
    :pswitch_b
    const-string p0, "cancelPendingUssdResponse"

    return-object p0

    .line 385
    :pswitch_c
    const-string p0, "sendUssdResponse"

    return-object p0

    .line 381
    :pswitch_d
    const-string p0, "setCallForwardStatusResponse"

    return-object p0

    .line 377
    :pswitch_e
    const-string p0, "queryVirtualLineInfoResponse"

    return-object p0

    .line 373
    :pswitch_f
    const-string p0, "registerMultiIdentityLinesResponse"

    return-object p0

    .line 369
    :pswitch_10
    const-string p0, "sendSmsResponse"

    return-object p0

    .line 365
    :pswitch_11
    const-string p0, "cancelModifyCallResponse"

    return-object p0

    .line 361
    :pswitch_12
    const-string p0, "sendRttMessageResponse"

    return-object p0

    .line 357
    :pswitch_13
    const-string p0, "getImsSubConfigResponse"

    return-object p0

    .line 353
    :pswitch_14
    const-string p0, "sendGeolocationInfoResponse"

    return-object p0

    .line 349
    :pswitch_15
    const-string p0, "deflectCallResponse"

    return-object p0

    .line 345
    :pswitch_16
    const-string p0, "addParticipantResponse"

    return-object p0

    .line 341
    :pswitch_17
    const-string p0, "getRtpErrorStatisticsResponse"

    return-object p0

    .line 337
    :pswitch_18
    const-string p0, "getRtpStatisticsResponse"

    return-object p0

    .line 333
    :pswitch_19
    const-string p0, "setSuppServiceNotificationResponse"

    return-object p0

    .line 329
    :pswitch_1a
    const-string p0, "explicitCallTransferResponse"

    return-object p0

    .line 325
    :pswitch_1b
    const-string p0, "getCallWaitingResponse"

    return-object p0

    .line 321
    :pswitch_1c
    const-string p0, "queryCallForwardStatusResponse"

    return-object p0

    .line 317
    :pswitch_1d
    const-string p0, "modifyCallConfirmResponse"

    return-object p0

    .line 313
    :pswitch_1e
    const-string p0, "modifyCallInitiateResponse"

    return-object p0

    .line 309
    :pswitch_1f
    const-string p0, "setUiTTYModeResponse"

    return-object p0

    .line 305
    :pswitch_20
    const-string p0, "stopDtmfResponse"

    return-object p0

    .line 301
    :pswitch_21
    const-string p0, "startDtmfResponse"

    return-object p0

    .line 297
    :pswitch_22
    const-string p0, "sendDtmfResponse"

    return-object p0

    .line 293
    :pswitch_23
    const-string p0, "exitEmergencyCallbackModeResponse"

    return-object p0

    .line 289
    :pswitch_24
    const-string p0, "getColrResponse"

    return-object p0

    .line 285
    :pswitch_25
    const-string p0, "setClirResponse"

    return-object p0

    .line 281
    :pswitch_26
    const-string p0, "getClirResponse"

    return-object p0

    .line 277
    :pswitch_27
    const-string p0, "getClipResponse"

    return-object p0

    .line 273
    :pswitch_28
    const-string p0, "conferenceResponse"

    return-object p0

    .line 269
    :pswitch_29
    const-string p0, "suppServiceStatusResponse"

    return-object p0

    .line 265
    :pswitch_2a
    const-string p0, "getImsRegistrationStateResponse"

    return-object p0

    .line 261
    :pswitch_2b
    const-string p0, "getConfigResponse"

    return-object p0

    .line 257
    :pswitch_2c
    const-string p0, "setConfigResponse"

    return-object p0

    .line 253
    :pswitch_2d
    const-string p0, "resumeResponse"

    return-object p0

    .line 249
    :pswitch_2e
    const-string p0, "holdResponse"

    return-object p0

    .line 245
    :pswitch_2f
    const-string p0, "setServiceStatusResponse"

    return-object p0

    .line 241
    :pswitch_30
    const-string p0, "queryServiceStatusResponse"

    return-object p0

    .line 237
    :pswitch_31
    const-string p0, "requestRegistrationChangeResponse"

    return-object p0

    .line 233
    :pswitch_32
    const-string p0, "hangupResponse"

    return-object p0

    .line 229
    :pswitch_33
    const-string p0, "answerResponse"

    return-object p0

    .line 225
    :pswitch_34
    const-string p0, "dialResponse"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 444
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 449
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1029
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 1018
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1022
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallBarringStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/CallBarringStatusInfo;

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setAllCallBarringStatusResponse(IILvendor/qti/hardware/radio/ims/CallBarringStatusInfo;)V

    goto/16 :goto_0

    .line 1008
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->abortConferenceResponse(II)V

    goto/16 :goto_0

    .line 998
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setGlassesFree3dVideoCapabilityResponse(II)V

    goto/16 :goto_0

    .line 988
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendVosActionInfoResponse(II)V

    goto/16 :goto_0

    .line 978
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendVosSupportStatusResponse(II)V

    goto/16 :goto_0

    .line 968
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitSmsCallBackModeResponse(II)V

    goto/16 :goto_0

    .line 956
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryMultiSimVoiceCapabilityResponse(III)V

    goto/16 :goto_0

    .line 946
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setMediaConfigurationResponse(II)V

    goto/16 :goto_0

    .line 936
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    goto/16 :goto_0

    .line 924
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 928
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 912
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 916
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 900
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 904
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V

    goto/16 :goto_0

    .line 888
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    goto/16 :goto_0

    .line 868
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 870
    sget-object p3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V

    goto/16 :goto_0

    .line 858
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    goto/16 :goto_0

    .line 848
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    goto/16 :goto_0

    .line 836
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 840
    sget-object p4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    goto/16 :goto_0

    .line 826
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    goto/16 :goto_0

    .line 816
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    goto/16 :goto_0

    .line 806
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    goto/16 :goto_0

    .line 794
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, p1, p3, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    goto/16 :goto_0

    .line 782
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, p1, p3, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    goto/16 :goto_0

    .line 770
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    goto/16 :goto_0

    .line 758
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 762
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 744
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 748
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 750
    sget-object v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 730
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 734
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 736
    sget-object v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 720
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    goto/16 :goto_0

    .line 710
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    goto/16 :goto_0

    .line 700
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    goto/16 :goto_0

    .line 690
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    goto/16 :goto_0

    .line 680
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    goto/16 :goto_0

    .line 670
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    goto/16 :goto_0

    .line 660
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    goto/16 :goto_0

    .line 648
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 652
    sget-object p4, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V

    goto/16 :goto_0

    .line 638
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setClirResponse(II)V

    goto/16 :goto_0

    .line 624
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 628
    sget-object p4, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V

    goto/16 :goto_0

    .line 612
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 616
    sget-object p4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V

    goto/16 :goto_0

    .line 600
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 604
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 588
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 592
    sget-object p4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V

    goto/16 :goto_0

    .line 576
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 580
    sget-object p4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    goto/16 :goto_0

    .line 564
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 568
    sget-object p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 552
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 556
    sget-object p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 540
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 544
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 528
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 532
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto :goto_0

    .line 518
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    goto :goto_0

    .line 506
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 510
    sget-object p4, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    goto :goto_0

    .line 496
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    goto :goto_0

    .line 486
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->hangupResponse(II)V

    goto :goto_0

    .line 476
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->answerResponse(II)V

    goto :goto_0

    .line 466
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->dialResponse(II)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
