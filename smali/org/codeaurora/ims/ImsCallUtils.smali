.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CLIR_RESPONSE_LENGTH:I = 0x2

.field public static final CONFIG_ITEM_INVALID:I = -0x1

.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final MIN_VIDEO_CALL_PHONE_NUMBER_LENGTH:I = 0x7

.field private static TAG:Ljava/lang/String; = "ImsCallUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_1

    const/16 v1, 0x1d

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x1b

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static convertImsConfigToImsConfigItem(I)I
    .locals 3

    const/16 v0, 0x48

    if-eq p0, v0, :cond_1

    const/16 v1, 0xd

    const/16 v2, 0x4a

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 538
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x50

    return p0

    :pswitch_1
    const/16 p0, 0x4f

    return p0

    :pswitch_2
    const/16 p0, 0x4e

    return p0

    :pswitch_3
    const/16 p0, 0x4d

    return p0

    :pswitch_4
    const/16 p0, 0x4b

    return p0

    :pswitch_5
    const/16 p0, 0x49

    return p0

    :pswitch_6
    return v0

    :pswitch_7
    const/16 p0, 0x47

    return p0

    :pswitch_8
    return v2

    :pswitch_9
    const/16 p0, 0x4c

    return p0

    :pswitch_a
    const/16 p0, 0x46

    return p0

    :pswitch_b
    const/16 p0, 0x45

    return p0

    :pswitch_c
    const/16 p0, 0x43

    return p0

    :pswitch_d
    const/16 p0, 0x42

    return p0

    :pswitch_e
    const/16 p0, 0x41

    return p0

    :pswitch_f
    const/16 p0, 0x40

    return p0

    :pswitch_10
    const/16 p0, 0x3f

    return p0

    :pswitch_11
    const/16 p0, 0x3e

    return p0

    :pswitch_12
    const/16 p0, 0x3d

    return p0

    :pswitch_13
    const/16 p0, 0x3c

    return p0

    :pswitch_14
    const/16 p0, 0x3b

    return p0

    :pswitch_15
    const/16 p0, 0x3a

    return p0

    :pswitch_16
    const/16 p0, 0x39

    return p0

    :pswitch_17
    const/16 p0, 0x38

    return p0

    :pswitch_18
    const/16 p0, 0x37

    return p0

    :pswitch_19
    const/16 p0, 0x36

    return p0

    :pswitch_1a
    const/16 p0, 0x35

    return p0

    :pswitch_1b
    const/16 p0, 0x34

    return p0

    :pswitch_1c
    const/16 p0, 0x33

    return p0

    :pswitch_1d
    const/16 p0, 0x32

    return p0

    :pswitch_1e
    const/16 p0, 0x31

    return p0

    :pswitch_1f
    const/16 p0, 0x30

    return p0

    :pswitch_20
    const/16 p0, 0x2f

    return p0

    :pswitch_21
    const/16 p0, 0x2e

    return p0

    :pswitch_22
    const/16 p0, 0x2d

    return p0

    :pswitch_23
    const/16 p0, 0x2c

    return p0

    :pswitch_24
    const/16 p0, 0x2b

    return p0

    :pswitch_25
    const/16 p0, 0x2a

    return p0

    :pswitch_26
    const/16 p0, 0x29

    return p0

    :pswitch_27
    const/16 p0, 0x28

    return p0

    :pswitch_28
    const/16 p0, 0x27

    return p0

    :pswitch_29
    const/16 p0, 0x26

    return p0

    :pswitch_2a
    const/16 p0, 0x25

    return p0

    :pswitch_2b
    const/16 p0, 0x24

    return p0

    :pswitch_2c
    const/16 p0, 0x23

    return p0

    :pswitch_2d
    const/16 p0, 0x22

    return p0

    :pswitch_2e
    const/16 p0, 0x21

    return p0

    :pswitch_2f
    const/16 p0, 0x1a

    return p0

    :pswitch_30
    const/16 p0, 0x44

    return p0

    :pswitch_31
    const/16 p0, 0x1d

    return p0

    :pswitch_32
    const/16 p0, 0x1c

    return p0

    :pswitch_33
    const/16 p0, 0x19

    return p0

    :pswitch_34
    const/16 p0, 0x18

    return p0

    :pswitch_35
    const/16 p0, 0x17

    return p0

    :pswitch_36
    const/16 p0, 0x16

    return p0

    :pswitch_37
    const/16 p0, 0x15

    return p0

    :pswitch_38
    const/16 p0, 0x14

    return p0

    :pswitch_39
    const/16 p0, 0x13

    return p0

    :pswitch_3a
    const/16 p0, 0x12

    return p0

    :pswitch_3b
    const/16 p0, 0x1e

    return p0

    :pswitch_3c
    const/16 p0, 0x11

    return p0

    :pswitch_3d
    const/16 p0, 0x10

    return p0

    :pswitch_3e
    const/16 p0, 0xf

    return p0

    :pswitch_3f
    const/16 p0, 0xe

    return p0

    :pswitch_40
    return v1

    :pswitch_41
    const/16 p0, 0xc

    return p0

    :pswitch_42
    const/16 p0, 0xb

    return p0

    :pswitch_43
    const/16 p0, 0xa

    return p0

    :pswitch_44
    const/16 p0, 0x9

    return p0

    :pswitch_45
    const/16 p0, 0x8

    return p0

    :pswitch_46
    const/4 p0, 0x7

    return p0

    :pswitch_47
    const/4 p0, 0x6

    return p0

    :pswitch_48
    const/4 p0, 0x5

    return p0

    :pswitch_49
    const/4 p0, 0x4

    return p0

    :pswitch_4a
    const/4 p0, 0x3

    return p0

    :pswitch_4b
    const/4 p0, 0x2

    return p0

    :pswitch_4c
    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    const/16 p0, 0x51

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
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

.method public static convertImsErrorToUiError(I)I
    .locals 1

    .line 279
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 281
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_3

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static convertToInternalCallType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 265
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertToInternalCallType invalid calltype "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 1

    .line 272
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 273
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p0

    invoke-direct {v0, p0, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x1d

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 5

    .line 719
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 720
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 721
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v2

    .line 722
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 725
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v0

    .line 724
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 726
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 728
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;

    move-result-object v0

    .line 727
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setAcceptedRtpHeaderExtensionTypes(Ljava/util/Set;)V

    .line 730
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v0

    .line 729
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 733
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    .line 734
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

    .line 735
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallTesting(Z)V

    .line 736
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    return-object v1
.end method

.method public static getCrsMode(Landroid/content/Context;)I
    .locals 0

    .line 741
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->isCrsCallSupportedByAudioHal(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 645
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 646
    iget-object v3, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 647
    iget-object p0, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p0, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :cond_1
    move p0, v1

    :goto_0
    if-nez v2, :cond_2

    .line 651
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 653
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sip error code:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " error string :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    .line 656
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static getUiErrorCode(I)I
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x32

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 1

    .line 312
    instance-of v0, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v0, :cond_0

    .line 313
    check-cast p0, Lorg/codeaurora/ims/ImsRilException;

    .line 314
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 543
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5

    .line 118
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 120
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 121
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 123
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v0, :cond_1

    .line 125
    :cond_0
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v0, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v4
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5

    .line 135
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 136
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 137
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 138
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v0, :cond_0

    .line 142
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    .line 144
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v4
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 602
    const-string v0, "persist.vendor.radio.atel.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isConfigRequestValid(II)Z
    .locals 4

    const/4 v0, 0x0

    .line 349
    :try_start_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x36

    if-eq p0, v1, :cond_0

    const/16 v1, 0x43

    if-eq p0, v1, :cond_0

    const/16 v1, 0x48

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq p0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :cond_1
    :goto_0
    if-ne v3, p1, :cond_2

    return v2

    :cond_2
    return v0

    .line 366
    :catch_0
    sget-object p0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string p1, "Invalid config - setting CONFIG_TYPE_INVALID"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public static isCrsCallSupportedByAudioHal(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 749
    :cond_0
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_1

    return v0

    .line 753
    :cond_1
    const-string v0, "isCRSsupported"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 754
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRS is supported from audio HAL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "isCRSsupported=1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCrsDeviceSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 769
    :cond_0
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_1

    return v0

    .line 773
    :cond_1
    const-string v0, "isCRSDeviceSupported"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 774
    const-string v0, "isCRSDeviceSupported=1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 775
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRS output device is supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isDualVtCallType(I)Z
    .locals 1

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDualVtRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2

    .line 160
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 182
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSessionConnecting(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2

    .line 174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCall(I)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 665
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 660
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 615
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 616
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 628
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ","

    .line 629
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "*"

    .line 630
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v0

    .line 617
    :cond_4
    :goto_1
    sget-object p0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v1, "Phone number invalid!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5

    .line 75
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    .line 77
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 78
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 80
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v2, :cond_0

    .line 82
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 84
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_1

    .line 86
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    if-nez v2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v3
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    .line 104
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 105
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 107
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_0

    .line 109
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoTxEnabled(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    if-ne p0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isVoiceCall(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeExtras(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 0

    .line 566
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x83

    return p0

    :pswitch_2
    const/16 p0, 0xf9

    return p0

    :pswitch_3
    const/16 p0, 0xf8

    return p0

    :pswitch_4
    const/16 p0, 0xfa

    return p0

    :pswitch_5
    const/16 p0, 0xfb

    return p0

    :pswitch_6
    const/16 p0, 0xf7

    return p0

    :pswitch_7
    const/16 p0, 0xf6

    return p0

    :pswitch_8
    const/16 p0, 0xf5

    return p0

    :pswitch_9
    const/16 p0, 0xf4

    return p0

    :pswitch_a
    const/16 p0, 0xf1

    return p0

    :pswitch_b
    const/16 p0, 0x4b3

    return p0

    :pswitch_c
    const/16 p0, 0x4b2

    return p0

    :pswitch_d
    const/16 p0, 0x4b1

    return p0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 0

    .line 550
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static updateImsCallProfileVerstatInfo(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 684
    const-string v0, "CanMarkUnwantedCall"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 688
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->getVerstatVerificationStatus()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    .line 693
    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 696
    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    :goto_0
    if-eqz p0, :cond_4

    .line 701
    const-string v0, "VerstatVerificationStatus"

    invoke-virtual {p1, v0, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method
