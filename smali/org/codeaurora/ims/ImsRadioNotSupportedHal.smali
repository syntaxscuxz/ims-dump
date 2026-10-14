.class public Lorg/codeaurora/ims/ImsRadioNotSupportedHal;
.super Ljava/lang/Object;
.source "ImsRadioNotSupportedHal.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fail()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Radio is not supported"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abortConference(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public acknowledgeSms(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public answer(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public conference(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getCallWaiting(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getClip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getClir(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getColr(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public hold(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public isAlive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public resume(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public sendVosSupportStatus(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setAllCallBarringStatus(IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setClir(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setColr(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setGlassesFree3dVideoCapability(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public startDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public stopDtmf(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    return-void
.end method

.method public toAvailability(Z)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
