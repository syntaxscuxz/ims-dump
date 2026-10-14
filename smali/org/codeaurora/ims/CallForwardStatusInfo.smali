.class public Lorg/codeaurora/ims/CallForwardStatusInfo;
.super Ljava/lang/Object;
.source "CallForwardStatusInfo.java"


# instance fields
.field private callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

.field private sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 18
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 22
    iput-object p2, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    return-void
.end method


# virtual methods
.method public getCallForwardStatus()[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    return-object p0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " { CallForwardStatusInfo :: sipErrorInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Individual status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    .line 30
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
