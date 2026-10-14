.class public Lorg/codeaurora/ims/CallBarringStatusInfo;
.super Ljava/lang/Object;
.source "CallBarringStatusInfo.java"


# instance fields
.field private mAllCallBarringStatus:[Lorg/codeaurora/ims/CallBarringStatus;

.field private mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 19
    iput-object v0, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mAllCallBarringStatus:[Lorg/codeaurora/ims/CallBarringStatus;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallBarringStatus;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 23
    iput-object p2, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mAllCallBarringStatus:[Lorg/codeaurora/ims/CallBarringStatus;

    return-void
.end method


# virtual methods
.method public getAllCallBarringStatus()[Lorg/codeaurora/ims/CallBarringStatus;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mAllCallBarringStatus:[Lorg/codeaurora/ims/CallBarringStatus;

    return-object p0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " { CallBarringStatusInfo::sipErrorInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mSipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " CallBarringStatusList status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CallBarringStatusInfo;->mAllCallBarringStatus:[Lorg/codeaurora/ims/CallBarringStatus;

    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
