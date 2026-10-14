.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCallComposerInfoAvailable:I = 0x20

.field static final TRANSACTION_onCallStateChanged:I = 0x1

.field static final TRANSACTION_onCiWlanNotification:I = 0x2c

.field static final TRANSACTION_onConferenceCallStateCompleted:I = 0x26

.field static final TRANSACTION_onEmergencyCallBackModeChanged:I = 0x8

.field static final TRANSACTION_onGeolocationInfoRequested:I = 0xf

.field static final TRANSACTION_onHandover:I = 0x5

.field static final TRANSACTION_onImsSubConfigChanged:I = 0x10

.field static final TRANSACTION_onIncomingCallAutoRejected:I = 0x19

.field static final TRANSACTION_onIncomingCallAutoRejected2:I = 0x2b

.field static final TRANSACTION_onIncomingCallComposerCallAutoRejected:I = 0x21

.field static final TRANSACTION_onIncomingDtmfStart:I = 0x27

.field static final TRANSACTION_onIncomingDtmfStop:I = 0x28

.field static final TRANSACTION_onIncomingSms:I = 0x17

.field static final TRANSACTION_onMessageWaiting:I = 0xe

.field static final TRANSACTION_onModemSupportsWfcRoamingModeConfiguration:I = 0x1d

.field static final TRANSACTION_onModifyCall:I = 0xc

.field static final TRANSACTION_onMultiIdentityInfoPending:I = 0x1c

.field static final TRANSACTION_onMultiIdentityRegistrationStatusChange:I = 0x1b

.field static final TRANSACTION_onMultiSimVoiceCapabilityChanged:I = 0x29

.field static final TRANSACTION_onParticipantStatusInfo:I = 0x11

.field static final TRANSACTION_onPreAlertingCallInfoAvailable:I = 0x2a

.field static final TRANSACTION_onRadioStateChanged:I = 0x7

.field static final TRANSACTION_onRefreshConferenceInfo:I = 0xa

.field static final TRANSACTION_onRefreshViceInfo:I = 0xb

.field static final TRANSACTION_onRegistrationBlockStatus:I = 0x12

.field static final TRANSACTION_onRegistrationChanged:I = 0x4

.field static final TRANSACTION_onRetrievingGeoLocationDataStatus:I = 0x22

.field static final TRANSACTION_onRing:I = 0x2

.field static final TRANSACTION_onRingbackTone:I = 0x3

.field static final TRANSACTION_onRttMessageReceived:I = 0x13

.field static final TRANSACTION_onServiceDomainChanged:I = 0x24

.field static final TRANSACTION_onServiceStatusChanged:I = 0x6

.field static final TRANSACTION_onSipDtmfReceived:I = 0x23

.field static final TRANSACTION_onSmsCallBackModeChanged:I = 0x25

.field static final TRANSACTION_onSmsSendStatusReport:I = 0x16

.field static final TRANSACTION_onSrtpEncryptionStatusChanged:I = 0x2d

.field static final TRANSACTION_onSuppServiceNotification:I = 0xd

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x15

.field static final TRANSACTION_onTtyNotification:I = 0x9

.field static final TRANSACTION_onUssdMessageFailed:I = 0x1e

.field static final TRANSACTION_onUssdReceived:I = 0x1f

.field static final TRANSACTION_onVoWiFiCallQuality:I = 0x14

.field static final TRANSACTION_onVoiceInfoChanged:I = 0x1a

.field static final TRANSACTION_onVopsChanged:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 178
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->markVintfStability()V

    .line 179
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    if-eqz v1, :cond_1

    .line 192
    check-cast v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    return-object v0

    .line 194
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 387
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 391
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 383
    :pswitch_2
    const-string p0, "onSrtpEncryptionStatusChanged"

    return-object p0

    .line 379
    :pswitch_3
    const-string p0, "onCiWlanNotification"

    return-object p0

    .line 375
    :pswitch_4
    const-string p0, "onIncomingCallAutoRejected2"

    return-object p0

    .line 371
    :pswitch_5
    const-string p0, "onPreAlertingCallInfoAvailable"

    return-object p0

    .line 367
    :pswitch_6
    const-string p0, "onMultiSimVoiceCapabilityChanged"

    return-object p0

    .line 363
    :pswitch_7
    const-string p0, "onIncomingDtmfStop"

    return-object p0

    .line 359
    :pswitch_8
    const-string p0, "onIncomingDtmfStart"

    return-object p0

    .line 355
    :pswitch_9
    const-string p0, "onConferenceCallStateCompleted"

    return-object p0

    .line 351
    :pswitch_a
    const-string p0, "onSmsCallBackModeChanged"

    return-object p0

    .line 347
    :pswitch_b
    const-string p0, "onServiceDomainChanged"

    return-object p0

    .line 343
    :pswitch_c
    const-string p0, "onSipDtmfReceived"

    return-object p0

    .line 339
    :pswitch_d
    const-string p0, "onRetrievingGeoLocationDataStatus"

    return-object p0

    .line 335
    :pswitch_e
    const-string p0, "onIncomingCallComposerCallAutoRejected"

    return-object p0

    .line 331
    :pswitch_f
    const-string p0, "onCallComposerInfoAvailable"

    return-object p0

    .line 327
    :pswitch_10
    const-string p0, "onUssdReceived"

    return-object p0

    .line 323
    :pswitch_11
    const-string p0, "onUssdMessageFailed"

    return-object p0

    .line 319
    :pswitch_12
    const-string p0, "onModemSupportsWfcRoamingModeConfiguration"

    return-object p0

    .line 315
    :pswitch_13
    const-string p0, "onMultiIdentityInfoPending"

    return-object p0

    .line 311
    :pswitch_14
    const-string p0, "onMultiIdentityRegistrationStatusChange"

    return-object p0

    .line 307
    :pswitch_15
    const-string p0, "onVoiceInfoChanged"

    return-object p0

    .line 303
    :pswitch_16
    const-string p0, "onIncomingCallAutoRejected"

    return-object p0

    .line 299
    :pswitch_17
    const-string p0, "onVopsChanged"

    return-object p0

    .line 295
    :pswitch_18
    const-string p0, "onIncomingSms"

    return-object p0

    .line 291
    :pswitch_19
    const-string p0, "onSmsSendStatusReport"

    return-object p0

    .line 287
    :pswitch_1a
    const-string p0, "onSupplementaryServiceIndication"

    return-object p0

    .line 283
    :pswitch_1b
    const-string p0, "onVoWiFiCallQuality"

    return-object p0

    .line 279
    :pswitch_1c
    const-string p0, "onRttMessageReceived"

    return-object p0

    .line 275
    :pswitch_1d
    const-string p0, "onRegistrationBlockStatus"

    return-object p0

    .line 271
    :pswitch_1e
    const-string p0, "onParticipantStatusInfo"

    return-object p0

    .line 267
    :pswitch_1f
    const-string p0, "onImsSubConfigChanged"

    return-object p0

    .line 263
    :pswitch_20
    const-string p0, "onGeolocationInfoRequested"

    return-object p0

    .line 259
    :pswitch_21
    const-string p0, "onMessageWaiting"

    return-object p0

    .line 255
    :pswitch_22
    const-string p0, "onSuppServiceNotification"

    return-object p0

    .line 251
    :pswitch_23
    const-string p0, "onModifyCall"

    return-object p0

    .line 247
    :pswitch_24
    const-string p0, "onRefreshViceInfo"

    return-object p0

    .line 243
    :pswitch_25
    const-string p0, "onRefreshConferenceInfo"

    return-object p0

    .line 239
    :pswitch_26
    const-string p0, "onTtyNotification"

    return-object p0

    .line 235
    :pswitch_27
    const-string p0, "onEmergencyCallBackModeChanged"

    return-object p0

    .line 231
    :pswitch_28
    const-string p0, "onRadioStateChanged"

    return-object p0

    .line 227
    :pswitch_29
    const-string p0, "onServiceStatusChanged"

    return-object p0

    .line 223
    :pswitch_2a
    const-string p0, "onHandover"

    return-object p0

    .line 219
    :pswitch_2b
    const-string p0, "onRegistrationChanged"

    return-object p0

    .line 215
    :pswitch_2c
    const-string p0, "onRingbackTone"

    return-object p0

    .line 211
    :pswitch_2d
    const-string p0, "onRing"

    return-object p0

    .line 207
    :pswitch_2e
    const-string p0, "onCallStateChanged"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 402
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 407
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 782
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 775
    :pswitch_0
    sget-object p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSrtpEncryptionStatusChanged(Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;)V

    goto/16 :goto_0

    .line 767
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCiWlanNotification(I)V

    goto/16 :goto_0

    .line 759
    :pswitch_2
    sget-object p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V

    goto/16 :goto_0

    .line 751
    :pswitch_3
    sget-object p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V

    goto/16 :goto_0

    .line 743
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiSimVoiceCapabilityChanged(I)V

    goto/16 :goto_0

    .line 735
    :pswitch_5
    sget-object p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 727
    :pswitch_6
    sget-object p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 721
    :pswitch_7
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    goto/16 :goto_0

    .line 714
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    goto/16 :goto_0

    .line 706
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    goto/16 :goto_0

    .line 698
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    goto/16 :goto_0

    .line 682
    :pswitch_c
    sget-object p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V

    goto/16 :goto_0

    .line 674
    :pswitch_d
    sget-object p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V

    goto/16 :goto_0

    .line 662
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 666
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 652
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 654
    sget-object p3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 644
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    goto/16 :goto_0

    .line 638
    :pswitch_11
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    goto/16 :goto_0

    .line 631
    :pswitch_12
    sget-object p1, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    goto/16 :goto_0

    .line 623
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    goto/16 :goto_0

    .line 615
    :pswitch_14
    sget-object p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    goto/16 :goto_0

    .line 607
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    goto/16 :goto_0

    .line 599
    :pswitch_16
    sget-object p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V

    goto/16 :goto_0

    .line 591
    :pswitch_17
    sget-object p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V

    goto/16 :goto_0

    .line 583
    :pswitch_18
    sget-object p1, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V

    goto/16 :goto_0

    .line 575
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    goto/16 :goto_0

    .line 567
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    :pswitch_1b
    sget-object p1, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V

    goto/16 :goto_0

    .line 551
    :pswitch_1c
    sget-object p1, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V

    goto/16 :goto_0

    .line 543
    :pswitch_1d
    sget-object p1, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    goto/16 :goto_0

    .line 533
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p3

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, p3, p4, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    goto/16 :goto_0

    .line 525
    :pswitch_1f
    sget-object p1, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V

    goto/16 :goto_0

    .line 517
    :pswitch_20
    sget-object p1, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V

    goto/16 :goto_0

    .line 509
    :pswitch_21
    sget-object p1, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    goto/16 :goto_0

    .line 501
    :pswitch_22
    sget-object p1, Lvendor/qti/hardware/radio/ims/ViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V

    goto/16 :goto_0

    .line 493
    :pswitch_23
    sget-object p1, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V

    goto/16 :goto_0

    .line 485
    :pswitch_24
    sget-object p1, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V

    goto :goto_0

    .line 477
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onEmergencyCallBackModeChanged(I)V

    goto :goto_0

    .line 469
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    goto :goto_0

    .line 461
    :pswitch_27
    sget-object p1, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    goto :goto_0

    .line 453
    :pswitch_28
    sget-object p1, Lvendor/qti/hardware/radio/ims/HandoverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V

    goto :goto_0

    .line 445
    :pswitch_29
    sget-object p1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    goto :goto_0

    .line 437
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRingbackTone(I)V

    goto :goto_0

    .line 431
    :pswitch_2b
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRing()V

    goto :goto_0

    .line 424
    :pswitch_2c
    sget-object p1, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
