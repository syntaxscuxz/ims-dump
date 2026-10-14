.class public Lorg/codeaurora/ims/CapabilityStatus;
.super Ljava/lang/Object;
.source "CapabilityStatus.java"


# static fields
.field private static final INVALID_CAPABILITY:I = -0x1


# instance fields
.field private mCapability:I

.field private mRadioTech:I

.field private mStatus:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    .line 35
    iput p2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    .line 36
    iput p3, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    return-void
.end method


# virtual methods
.method public getCapability()I
    .locals 0

    .line 46
    iget p0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    return p0
.end method

.method public getRadioTech()I
    .locals 0

    .line 41
    iget p0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 51
    iget p0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
