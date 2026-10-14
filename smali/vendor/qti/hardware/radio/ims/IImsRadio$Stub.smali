.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;
.super Landroid/os/Binder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortConference:I = 0x3a

.field static final TRANSACTION_acknowledgeSms:I = 0x2a

.field static final TRANSACTION_acknowledgeSmsReport:I = 0x2b

.field static final TRANSACTION_addParticipant:I = 0x3

.field static final TRANSACTION_answer:I = 0x5

.field static final TRANSACTION_callComposerDial:I = 0x32

.field static final TRANSACTION_cancelModifyCall:I = 0x28

.field static final TRANSACTION_cancelPendingUssd:I = 0x31

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_deflectCall:I = 0x24

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_emergencyDial:I = 0x2f

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x14

.field static final TRANSACTION_exitSmsCallBackMode:I = 0x36

.field static final TRANSACTION_explicitCallTransfer:I = 0x20

.field static final TRANSACTION_getCallWaiting:I = 0x1d

.field static final TRANSACTION_getClip:I = 0xf

.field static final TRANSACTION_getClir:I = 0x10

.field static final TRANSACTION_getColr:I = 0x12

.field static final TRANSACTION_getConfig:I = 0xd

.field static final TRANSACTION_getImsRegistrationState:I = 0x4

.field static final TRANSACTION_getImsSubConfig:I = 0x26

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatistics:I = 0x23

.field static final TRANSACTION_getRtpStatistics:I = 0x22

.field static final TRANSACTION_getSmsFormat:I = 0x2c

.field static final TRANSACTION_hangup:I = 0x6

.field static final TRANSACTION_hold:I = 0xa

.field static final TRANSACTION_modifyCallConfirm:I = 0x1a

.field static final TRANSACTION_modifyCallInitiate:I = 0x19

.field static final TRANSACTION_queryCallForwardStatus:I = 0x1b

.field static final TRANSACTION_queryMultiSimVoiceCapability:I = 0x35

.field static final TRANSACTION_queryServiceStatus:I = 0x8

.field static final TRANSACTION_queryVirtualLineInfo:I = 0x2e

.field static final TRANSACTION_registerMultiIdentityLines:I = 0x2d

.field static final TRANSACTION_requestRegistrationChange:I = 0x7

.field static final TRANSACTION_resume:I = 0xb

.field static final TRANSACTION_sendDtmf:I = 0x15

.field static final TRANSACTION_sendGeolocationInfo:I = 0x25

.field static final TRANSACTION_sendRttMessage:I = 0x27

.field static final TRANSACTION_sendSipDtmf:I = 0x33

.field static final TRANSACTION_sendSms:I = 0x29

.field static final TRANSACTION_sendUssd:I = 0x30

.field static final TRANSACTION_sendVosActionInfo:I = 0x38

.field static final TRANSACTION_sendVosSupportStatus:I = 0x37

.field static final TRANSACTION_setAllCallBarringStatus:I = 0x3b

.field static final TRANSACTION_setCallForwardStatus:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x1e

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setClir:I = 0x11

.field static final TRANSACTION_setColr:I = 0x13

.field static final TRANSACTION_setConfig:I = 0xc

.field static final TRANSACTION_setGlassesFree3dVideoCapability:I = 0x39

.field static final TRANSACTION_setMediaConfiguration:I = 0x34

.field static final TRANSACTION_setServiceStatus:I = 0x9

.field static final TRANSACTION_setSuppServiceNotification:I = 0x1f

.field static final TRANSACTION_setUiTtyMode:I = 0x18

.field static final TRANSACTION_startDtmf:I = 0x16

.field static final TRANSACTION_stopDtmf:I = 0x17

.field static final TRANSACTION_suppServiceStatus:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 221
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 222
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 235
    check-cast v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v0

    .line 237
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 486
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 490
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 482
    :pswitch_2
    const-string p0, "setAllCallBarringStatus"

    return-object p0

    .line 478
    :pswitch_3
    const-string p0, "abortConference"

    return-object p0

    .line 474
    :pswitch_4
    const-string p0, "setGlassesFree3dVideoCapability"

    return-object p0

    .line 470
    :pswitch_5
    const-string p0, "sendVosActionInfo"

    return-object p0

    .line 466
    :pswitch_6
    const-string p0, "sendVosSupportStatus"

    return-object p0

    .line 462
    :pswitch_7
    const-string p0, "exitSmsCallBackMode"

    return-object p0

    .line 458
    :pswitch_8
    const-string p0, "queryMultiSimVoiceCapability"

    return-object p0

    .line 454
    :pswitch_9
    const-string p0, "setMediaConfiguration"

    return-object p0

    .line 450
    :pswitch_a
    const-string p0, "sendSipDtmf"

    return-object p0

    .line 446
    :pswitch_b
    const-string p0, "callComposerDial"

    return-object p0

    .line 442
    :pswitch_c
    const-string p0, "cancelPendingUssd"

    return-object p0

    .line 438
    :pswitch_d
    const-string p0, "sendUssd"

    return-object p0

    .line 434
    :pswitch_e
    const-string p0, "emergencyDial"

    return-object p0

    .line 430
    :pswitch_f
    const-string p0, "queryVirtualLineInfo"

    return-object p0

    .line 426
    :pswitch_10
    const-string p0, "registerMultiIdentityLines"

    return-object p0

    .line 422
    :pswitch_11
    const-string p0, "getSmsFormat"

    return-object p0

    .line 418
    :pswitch_12
    const-string p0, "acknowledgeSmsReport"

    return-object p0

    .line 414
    :pswitch_13
    const-string p0, "acknowledgeSms"

    return-object p0

    .line 410
    :pswitch_14
    const-string p0, "sendSms"

    return-object p0

    .line 406
    :pswitch_15
    const-string p0, "cancelModifyCall"

    return-object p0

    .line 402
    :pswitch_16
    const-string p0, "sendRttMessage"

    return-object p0

    .line 398
    :pswitch_17
    const-string p0, "getImsSubConfig"

    return-object p0

    .line 394
    :pswitch_18
    const-string p0, "sendGeolocationInfo"

    return-object p0

    .line 390
    :pswitch_19
    const-string p0, "deflectCall"

    return-object p0

    .line 386
    :pswitch_1a
    const-string p0, "getRtpErrorStatistics"

    return-object p0

    .line 382
    :pswitch_1b
    const-string p0, "getRtpStatistics"

    return-object p0

    .line 378
    :pswitch_1c
    const-string p0, "suppServiceStatus"

    return-object p0

    .line 374
    :pswitch_1d
    const-string p0, "explicitCallTransfer"

    return-object p0

    .line 370
    :pswitch_1e
    const-string p0, "setSuppServiceNotification"

    return-object p0

    .line 366
    :pswitch_1f
    const-string p0, "setCallWaiting"

    return-object p0

    .line 362
    :pswitch_20
    const-string p0, "getCallWaiting"

    return-object p0

    .line 358
    :pswitch_21
    const-string p0, "setCallForwardStatus"

    return-object p0

    .line 354
    :pswitch_22
    const-string p0, "queryCallForwardStatus"

    return-object p0

    .line 350
    :pswitch_23
    const-string p0, "modifyCallConfirm"

    return-object p0

    .line 346
    :pswitch_24
    const-string p0, "modifyCallInitiate"

    return-object p0

    .line 342
    :pswitch_25
    const-string p0, "setUiTtyMode"

    return-object p0

    .line 338
    :pswitch_26
    const-string p0, "stopDtmf"

    return-object p0

    .line 334
    :pswitch_27
    const-string p0, "startDtmf"

    return-object p0

    .line 330
    :pswitch_28
    const-string p0, "sendDtmf"

    return-object p0

    .line 326
    :pswitch_29
    const-string p0, "exitEmergencyCallbackMode"

    return-object p0

    .line 322
    :pswitch_2a
    const-string p0, "setColr"

    return-object p0

    .line 318
    :pswitch_2b
    const-string p0, "getColr"

    return-object p0

    .line 314
    :pswitch_2c
    const-string p0, "setClir"

    return-object p0

    .line 310
    :pswitch_2d
    const-string p0, "getClir"

    return-object p0

    .line 306
    :pswitch_2e
    const-string p0, "getClip"

    return-object p0

    .line 302
    :pswitch_2f
    const-string p0, "conference"

    return-object p0

    .line 298
    :pswitch_30
    const-string p0, "getConfig"

    return-object p0

    .line 294
    :pswitch_31
    const-string p0, "setConfig"

    return-object p0

    .line 290
    :pswitch_32
    const-string p0, "resume"

    return-object p0

    .line 286
    :pswitch_33
    const-string p0, "hold"

    return-object p0

    .line 282
    :pswitch_34
    const-string p0, "setServiceStatus"

    return-object p0

    .line 278
    :pswitch_35
    const-string p0, "queryServiceStatus"

    return-object p0

    .line 274
    :pswitch_36
    const-string p0, "requestRegistrationChange"

    return-object p0

    .line 270
    :pswitch_37
    const-string p0, "hangup"

    return-object p0

    .line 266
    :pswitch_38
    const-string p0, "answer"

    return-object p0

    .line 262
    :pswitch_39
    const-string p0, "getImsRegistrationState"

    return-object p0

    .line 258
    :pswitch_3a
    const-string p0, "addParticipant"

    return-object p0

    .line 254
    :pswitch_3b
    const-string p0, "dial"

    return-object p0

    .line 250
    :pswitch_3c
    const-string p0, "setCallback"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
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

    .line 501
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 506
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1082
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 1073
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1075
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallBarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallBarringInfo;

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setAllCallBarringStatus(ILvendor/qti/hardware/radio/ims/CallBarringInfo;)V

    goto/16 :goto_0

    .line 1063
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1065
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->abortConference(ILvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;)V

    goto/16 :goto_0

    .line 1053
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setGlassesFree3dVideoCapability(IZ)V

    goto/16 :goto_0

    .line 1043
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1045
    sget-object p3, Lvendor/qti/hardware/radio/ims/VosActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/VosActionInfo;

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/VosActionInfo;)V

    goto/16 :goto_0

    .line 1033
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosSupportStatus(IZ)V

    goto/16 :goto_0

    .line 1025
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitSmsCallBackMode(I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryMultiSimVoiceCapability(I)V

    goto/16 :goto_0

    .line 1007
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1009
    sget-object p3, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/MediaConfig;

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    goto/16 :goto_0

    .line 997
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 989
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    goto/16 :goto_0

    .line 979
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    .line 969
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 959
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 961
    sget-object p3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    goto/16 :goto_0

    .line 949
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 939
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 941
    sget-object p3, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    goto/16 :goto_0

    .line 931
    :pswitch_f
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 924
    sget-object p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    goto/16 :goto_0

    .line 912
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 914
    sget-object p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    goto/16 :goto_0

    .line 902
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 904
    sget-object p3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    goto/16 :goto_0

    .line 892
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelModifyCall(II)V

    goto/16 :goto_0

    .line 882
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 874
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsSubConfig(I)V

    goto/16 :goto_0

    .line 864
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 866
    sget-object p3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    goto/16 :goto_0

    .line 854
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 856
    sget-object p3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    goto/16 :goto_0

    .line 846
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    goto/16 :goto_0

    .line 838
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpStatistics(I)V

    goto/16 :goto_0

    .line 828
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 830
    sget-object p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    goto/16 :goto_0

    .line 818
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 820
    sget-object p3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    goto/16 :goto_0

    .line 808
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setSuppServiceNotification(II)V

    goto/16 :goto_0

    .line 798
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 800
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    goto/16 :goto_0

    .line 788
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    .line 778
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 780
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    goto/16 :goto_0

    .line 768
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 770
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    goto/16 :goto_0

    .line 758
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 760
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    goto/16 :goto_0

    .line 748
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 750
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    goto/16 :goto_0

    .line 738
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 740
    sget-object p3, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    goto/16 :goto_0

    .line 730
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    .line 720
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 722
    sget-object p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 710
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    sget-object p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 702
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 692
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 694
    sget-object p3, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    goto/16 :goto_0

    .line 684
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getColr(I)V

    goto/16 :goto_0

    .line 674
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 676
    sget-object p3, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    goto/16 :goto_0

    .line 666
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    .line 658
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    .line 650
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    goto/16 :goto_0

    .line 640
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 642
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 630
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 632
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 620
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->resume(II)V

    goto/16 :goto_0

    .line 610
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hold(II)V

    goto/16 :goto_0

    .line 600
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 602
    sget-object p3, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    goto/16 :goto_0

    .line 592
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryServiceStatus(I)V

    goto/16 :goto_0

    .line 582
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->requestRegistrationChange(II)V

    goto :goto_0

    .line 572
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 574
    sget-object p3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    goto :goto_0

    .line 562
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 564
    sget-object p3, Lvendor/qti/hardware/radio/ims/AnswerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    goto :goto_0

    .line 554
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    goto :goto_0

    .line 544
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 546
    sget-object p3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    goto :goto_0

    .line 534
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 536
    sget-object p3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    goto :goto_0

    .line 523
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object p1

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object p4

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, p1, p4}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
