.class public Lorg/codeaurora/ims/CallBarringStatus;
.super Ljava/lang/Object;
.source "CallBarringStatus.java"


# instance fields
.field private mFacilityType:I

.field private mProvisionStatus:I

.field private mServiceClass:I

.field private mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/CallBarringStatus;-><init>(IIIILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public constructor <init>(IIIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/codeaurora/ims/CallBarringStatus;->mServiceClass:I

    .line 30
    iput p2, p0, Lorg/codeaurora/ims/CallBarringStatus;->mStatus:I

    .line 31
    iput p3, p0, Lorg/codeaurora/ims/CallBarringStatus;->mProvisionStatus:I

    .line 32
    iput p4, p0, Lorg/codeaurora/ims/CallBarringStatus;->mFacilityType:I

    .line 33
    iput-object p5, p0, Lorg/codeaurora/ims/CallBarringStatus;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public getFacilityType()I
    .locals 0

    .line 59
    iget p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mFacilityType:I

    return p0
.end method

.method public getProvisionStatus()I
    .locals 0

    .line 55
    iget p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mProvisionStatus:I

    return p0
.end method

.method public getServiceClass()I
    .locals 0

    .line 47
    iget p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mServiceClass:I

    return p0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 51
    iget p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mStatus:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallBarringStatus {Serviceclass = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/CallBarringStatus;->mServiceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallBarringStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  Provision status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallBarringStatus;->mProvisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Facility type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallBarringStatus;->mFacilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SipError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CallBarringStatus;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
