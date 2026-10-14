.class public Lorg/codeaurora/ims/ImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRegistrationImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-void
.end method

.method private getImsRegTechFromRadioTech(I)I
    .locals 0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_2

    const/16 p0, 0x15

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12

    if-eq p1, p0, :cond_0

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public registeredWithRadioTech(I)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registeredWithRadioTech :: imsRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onRegistered(I)V

    return-void
.end method

.method public registeringWithRadioTech(I)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registeringWithRadioTech :: imsRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onRegistering(I)V

    return-void
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 65
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registrationAssociatedUriChanged :: uris.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registrationChangeFailed :: imsRadioTech="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registrationDisconnected :: info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
