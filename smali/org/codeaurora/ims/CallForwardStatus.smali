.class public Lorg/codeaurora/ims/CallForwardStatus;
.super Ljava/lang/Object;
.source "CallForwardStatus.java"


# static fields
.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field private final INVALID:I

.field private reason:I

.field private sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->INVALID:I

    .line 27
    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method public constructor <init>(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->INVALID:I

    .line 21
    iput p1, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    .line 22
    iput p2, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    .line 23
    iput-object p3, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 0

    .line 38
    iget p0, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    return p0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 42
    iget p0, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ CallForwardStatus : reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ImsReasonInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
